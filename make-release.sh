#!/bin/bash

release_folder_name=odot

######################################################################
# Options, usage, etc
######################################################################

usage() {
    echo "Usage: $0 -hmoptzd -n [NAME]" 1>&2
    echo "Prepare a release of the odot package." 1>&2
    echo "-h        : Help" 1>&2    
    echo "-m        : Copy Max/MSP externals." 1>&2    
    echo "-p        : Copy Pure Data externals." 1>&2
    echo "-o        : Insert the name of the platform / OS into the archive name." 1>&2
    echo "-n [NAME] : Insert [NAME] into the archive name." 1>&2
    echo "-t        : Produce a tarball of the release." 1>&2
    echo "-z        : Produce a zip file of the release." 1>&2
    echo "-d        : Debug" 1>&2
    echo "" 1>&2

    echo "Running this script will cause a fresh clone of the repo " 1>&2
    echo "one level up. If that folder already exists, \`git pull\` will " 1>&2
    echo "be run inside it. " 1>&2
    echo "" 1>&2
    echo "-m and -p will cause the built [m]ax and/or [p]d externals " 1>&2
    echo "to be copied into the appropriate directories of the release. " 1>&2
    echo "" 1>&2
    echo "-t and -z produce a [t]arball and/or [z]ip file from the release folder." 1>&2
    echo "The name of the archive will begin with 'odot' and end with the " 1>&2
    echo "version string as reported by \`git describe --long\`.  " 1>&2
    echo "" 1>&2
    echo "Specifying -m and/or -p when building an archive will cause 'Max' and/or " 1>&2
    echo "'PD' to be inserted between 'odot' and the version string. " 1>&2
    echo "-o will cause add the platform name (MacOSX, Windows, or Linux), " 1>&2
    echo "and -n [NAME] will insert [NAME] just before the version string." 1>&2
    echo "" 1>&2
    echo "Process for making a release for the Max Package Manager: " 1>&2
    echo "1. Build the objects on macOS. " 1>&2
    echo "2. Run this script with -mz to copy the Max externals and make a zip file. " 1>&2
    echo "3. Copy that zip file to the Windows build machine and unzip it " 1>&2
    echo "   in the folder that contains CNMAT-odot. It will produce a folder called odot. " 1>&2
    echo "4. On the Windows machine, build the objects, then " 1>&2
    echo "5. run this script with the -mz flags again. " 1>&2
    echo "   This will copy the Windows externals into the correct folders " 1>&2
    echo "   so that they're side-by-side the Mac externals, " 1>&2
    echo "   which is what is needed for the PM. " 1>&2
}

max=0
pd=0
os=0
havename=0
name=""
archive_tarball=0
archive_zip=0
debug=0

while getopts ":hmn:optzd" options; do
    case "${options}" in
	h)
	    usage
	    exit 0
	    ;;
	m)
	    max=1
	    ;;
	p)
	    pd=1
	    ;;
	o)
	    os=1
	    ;;
	n)
	    havename=1
	    name=${OPTARG}
	    ;;
	t)
	    archive_tarball=1
	    ;;
	z)
	    archive_zip=1
	    ;;
	d)
	    debug=1
	    ;;
	:)
	    usage
	    exit 1
	    ;;
	\?)
	    usage
	    exit 1
	    ;;
    esac
done
shift $((OPTIND - 1))

######################################################################
# Make sure there is no uncommitted work in the git repo
######################################################################

require_clean_work_tree () {
    # Update the index
    git update-index -q --ignore-submodules --refresh
    err=0

    # Disallow unstaged changes in the working tree
    if ! git diff-files --quiet --ignore-submodules --
    then
	echo >&2 "you have unstaged changes."
	git diff-files --name-status -r --ignore-submodules -- >&2
	err=1
    fi

    # Disallow uncommitted changes in the index
    if ! git diff-index --cached --quiet HEAD --ignore-submodules --
    then
	echo >&2 "your index contains uncommitted changes."
	git diff-index --cached --name-status -r --ignore-submodules HEAD -- >&2
	err=1
    fi

    if [ $err = 1 ]; then
	echo >&2 "Please commit or stash them."
	exit 1
    fi
}
if [ "$debug" = 0 ]; then
    require_clean_work_tree
    set -x
fi

######################################################################
# platform
######################################################################
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    platform="Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    platform="MacOSX"
elif [[ "$OSTYPE" == "cygwin" ]]; then
    platform="Windows"
elif [[ "$OSTYPE" == "msys" ]]; then
    platform="Windows"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    platform="FreeBSD"
else
    platform=""
fi

######################################################################
# If the -m or -p swiches are present, clone a fresh copy of the repo
# into a folder called 'odot', and copy the [m]ax or [p]d externs
# into the appropriate locations.
######################################################################

if [ -d "../$release_folder_name" ]; then
    remote=`pwd`
    (cd "../$release_folder_name" \
         && git remote remove origin \
         && git remote add origin "$remote" \
         && git pull origin master \
         && require_clean_work_tree)
else
    git clone . "../$release_folder_name"
fi

copy_externs() {
    if [ "$max" = 1 ]; then
	echo "copying Max externals"
	echo cp -r externals "../$release_folder_name/"
	cp -r externals "../$release_folder_name/"
	echo cp -r dev/externals "../$release_folder_name/dev/"
	cp -r dev/externals "../$release_folder_name/dev/"
	echo cp -r deprecated/externals "../$release_folder_name/deprecated/"
	cp -r deprecated/externals "../$release_folder_name/deprecated/"
    fi
    if [ "$pd" = 1 ]; then
	echo "copying PD externals"
	ext="*.pd_*"
	if [ "$platform" = "Windows" ]; then
	    ext="*.dll"
	fi
	echo cp -r pd/$ext "../$release_folder_name/pd/"
	cp -r pd/$ext "../$release_folder_name/pd/"
	echo cp -r pd/dev/$ext "../$release_folder_name/pd/dev/"
	cp -r pd/dev/$ext "../$release_folder_name/pd/dev/"
	echo cp -r pd/deprecated/$ext "../$release_folder_name/pd/deprecated/"
	cp -r pd/deprecated/$ext "../$release_folder_name/pd/deprecated/"
    fi
}
copy_externs

######################################################################
# Remove any source code, scripts, internal stuff from the release
######################################################################

# clean_release() {
#     echo "cleaning up release"
#     if [ "$pd" = 0 ]; then
# 	files_to_delete+=( "pd" )
#     fi

#     for i in "${!files_to_delete[@]}"; do
# 	echo rm -rf "../${release_folder_name}/${files_to_delete[$i]}"
# 	rm -rf "../${release_folder_name}/${files_to_delete[$i]}"
#     done
# }
#clean_release

if [ "$pd" = 0 ]; then
    echo "*/pd/*" >> "../${release_folder_name}/release-excludes.txt"
fi

######################################################################
# Make package-info.json
######################################################################

open_obj() { echo "{" >> "$1"; }
close_obj() { echo "}" >> "$1"; }
open_list() { echo -n "[" >> "$1"; }
close_list() { echo -n "]" >> "$1"; }
end_entry() { echo "," >> "$1"; }
write_key() { echo -n "\"$2\" : " >> "$1"; }
write_val() { echo -n "\"$2\"" >> "$1"; }
write_list() {
    f="$1"
    shift
    n="$#"
    for ((i = 0; i < $n - 1; i++)); do
	echo -n "\"$1\"," >> "$f"
	shift
    done
    echo -n "\"$1\"" >> "$f"
}
write_simple_entry() {
    write_key "$1" "$2"
    write_val "$1" "$3"
    end_entry "$1"
}
write_final_entry() {
    write_key "$1" "$2"
    write_val "$1" "$3"
    echo "" >> "$1"
}
write_list_entry() {
    f="$1"
    shift
    write_key "$f" "$1"
    shift
    open_list "$f"
    write_list "$f" "$@"
    close_list "$f"
    end_entry "$f"
}

write_package_info() {
    echo "writing package-info.json"
    f="package-info.json"
    (
	cd "../$release_folder_name"
	touch "$f"
	open_obj "$f"
	write_simple_entry "$f" "author" "CNMAT"
	write_list_entry "$f" "authors" "John MacCallum" "Adrian Freed" "Rama Gottfried" "Ilya Rostovtsev"
	write_simple_entry "$f" "description" "Dynamic programming environment for OSC in Max"
	write_simple_entry "$f" "homepatcher" "o.start.here.maxpat"
	write_simple_entry "$f" "max_version_max" "none"
	write_simple_entry "$f" "max_version_min" "7.0"
	write_simple_entry "$f" "name" "odot"
	
	write_key "$f" "os"
	open_obj "$f"
	write_key "$f" "macintosh"
	open_obj "$f"
        write_list_entry "$f" "platform" "x64"
        write_final_entry "$f" "min_version" "10.10.x"
	close_obj "$f"
	end_entry "$f"
	write_key "$f" "windows"
	open_obj "$f"
        write_list_entry "$f" "platform" "x64"
        write_final_entry "$f" "min_version" "7"
	close_obj "$f"
	close_obj "$f"
	end_entry "$f"

	write_key "$f" "package_extras"
	open_obj "$f"
	write_simple_entry "$f" "reverse_domain" "edu.berkeley.cnmat"
	write_final_entry "$f" "copyright" "Copyright (c) 2007-21 UC Regents"
	close_obj "$f"
	end_entry "$f"

	write_list_entry "$f" "tags" "Open Sound Control" "OSC" "Dynamic Programming" "CNMAT"
	write_simple_entry "$f" "version" "$version"
	write_final_entry "$f" "website" "https://github.com/CNMAT/CNMAT-odot"
	close_obj "$f"
    )
}
write_package_info

######################################################################
# Produce the archive(s) if -z or -t are present
######################################################################

archive_name="odot"
version=`git describe --tags`

if [ "$max" = 1 ]; then
    archive_name="${archive_name}-Max"
fi

if [ "$pd" = 1 ]; then
    archive_name="${archive_name}-PD"
fi

if [ "$os" = 1 ]; then
    archive_name="${archive_name}-${platform}"
fi

if [ "$havename" = 1 ]; then
    archive_name="${archive_name}-${name}"
fi

archive_name="${archive_name}-${version}"

if [ "$archive_zip" = 1 ]; then
    (
        archive_name="${archive_name}.zip"
	if [ -e "../$archive_name" ]; then
	    echo "file $archive_name already exists" 1>&2
	else
	    if [ $max = 0 ] && [ $pd = 1 ]; then
		cd ..
		mv "$release_folder_name" "${release_folder_name}.___"
		cp -r "${release_folder_name}.___/pd" "$release_folder_name"
		zip -r -X "$archive_name" "$release_folder_name"
		rm -rf "$release_folder_name"
		mv "${release_folder_name}.___" "$release_folder_name"
	    else
	        cd .. && zip -r -X "$archive_name" "$release_folder_name" "-x@${release_folder_name}/release-excludes.txt"
	    fi
	fi
    )
fi

if [ "$archive_tarball" = 1 ]; then
    (
        archive_name="${archive_name}.tgz"
	if [ -e "../$archive_name" ]; then
	    echo "file $archive_name already exists" 1>&2
	else
	    if [ $max = 0 ] && [ $pd = 1 ]; then
		cd ..
		mv "$release_folder_name" "${release_folder_name}.___"
		cp -r "${release_folder_name}.___/pd" "$release_folder_name"
		tar zcvf "$archive_name" "$release_folder_name"
		rm -rf "$release_folder_name"
		mv "${release_folder_name}.___" "$release_folder_name"
	    else
		cd .. && tar zcvf "$archive_name" "-X${release_folder_name}/release-excludes.txt" "$release_folder_name"
	    fi
	fi
    )
fi

# if we didn't do a pd build, we will have appended the pd dir to 
# release-excludes.txt, so we check it back out here
(
    cd "../$release_folder_name" && git checkout release-excludes.txt
)
