#!/bin/bash

usage() {
    echo "Usage: $0 -hmop -n [NAME]" 1>&2
    echo "Clone a fresh copy of this folder, name it according to the options below," 1>&2
    echo "and copy the built externals into the appropriate folders for release." 1>&2
    echo "-h        : Help" 1>&2    
    echo "-m        : Copy Max/MSP externals." 1>&2    
    echo "-p        : Copy Pure Data externals." 1>&2
    echo "-o        : Insert the name of the platform / OS into the filename." 1>&2
    echo "-n [NAME] : Insert [NAME] into the filename." 1>&2
}

max=0
pd=0
os=0
havename=0
name=""

while getopts ":hmn:op" options; do
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

# echo "max = $max pd = $pd os = $os name = $name"
# exit

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

    if [ $err = 1 ]
    then
	echo >&2 "Please commit or stash them."
	exit 1
    fi
}

require_clean_work_tree

filename=odot

if [ $max = 1 ]
then
    filename="${filename}-Max"
fi

if [ $pd = 1 ]
then
    filename="${filename}-PD"
fi

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

# platform=$(awk -vpl="$platform" 'BEGIN {
#       pl=tolower(pl)
#       if ( pl == "darwin" ){
#         print "MacOSX"
#       }else if (pl ~ "mingw"){
#         print "Windows"
#       }else if(pl == "linux"){
#         print "Linux"
#       }
#     }')
if [ $os = 1 ]
then
    filename="${filename}-${platform}"
fi

if [ $havename = 1 ]
then
    filename="${filename}-${name}"
fi

version=`git describe --tags`

filename="${filename}-${version}"

if [ -e ../$filename ]
then
    echo "file ${filename} already exists"
    exit 1
fi

git clone . ../$filename

if [ $max = 1 ]
then
    echo "copying Max externals"
    cp -r externals ../$filename/
    cp -r dev/externals ../$filename/dev/
    cp -r deprecated/externals ../$filename/deprecated/
fi
if [ $pd = 1 ]
then
    echo "copying PD externals"
    ext="*.pd_*"
    if [ "$platform" = "Windows" ]
    then
	ext="*.dll"
    fi
    cp -r pd/$ext ../$filename/pd/
    cp -r pd/dev/$ext ../$filename/pd/dev/
    cp -r pd/deprecated/$ext ../$filename/pd/deprecated/
fi

echo "cleaning up release"
filestodelete=(".git" "src" "make-release.sh" "dev-internal")
if [ $pd = 0 ]
then
    filestodelete+=( "pd" )
fi

for i in ${!filestodelete[@]}
do
    echo rm -rf "../${filename}/${filestodelete[$i]}"
    rm -rf "../${filename}/${filestodelete[$i]}"
done

openobj() {
    echo "{" >> "$1"
}

closeobj() {
    echo "}" >> "$1"
}

openlist() {
    echo -n "[" >> "$1"
}

closelist() {
    echo -n "]" >> "$1"
}

writelist() {
    f="$1"
    shift
    n=$#
    for ((i = 0; i < $n - 1; i++))
    do
	echo -n "\"$1\"," >> "$f"
	shift
    done
    echo -n "\"$1\"" >> "$f"
}

writekey() {
    echo -n "\"$2\" : " >> "$1"
}

writesingleval() {
    echo -n "\"$2\"" >> "$1"
}

endentry() {
    echo "," >> "$1"
}

writesimpleentry() {
    writekey "$1" "$2"
    writesingleval "$1" "$3"
    endentry "$1"
}

writefinalentry() {
    writekey "$1" "$2"
    writesingleval "$1" "$3"
    echo "" >> "$1"
}

writelistentry() {
    f="$1"
    shift
    writekey "$f" "$1"
    shift
    openlist "$f"
    writelist "$f" "$@"
    closelist "$f"
    endentry "$f"
}

writepackageinfo() {
    f="package-info.json"
    cd ../$filename
    touch "$f"
    openobj "$f"
    writesimpleentry "$f" "author" "CNMAT"
    writelistentry "$f" "authors" "John MacCallum" "Adrian Freed" "Rama Gottfried" "Ilya Rostovtsev"
    writesimpleentry "$f" "description" "Dynamic programming environment for OSC in Max"
    writesimpleentry "$f" "homepatcher" "o.overview.maxpat"
    writesimpleentry "$f" "max_version_max" "none"
    writesimpleentry "$f" "max_version_min" "6.0"
    writesimpleentry "$f" "name" "odot"
    
    writekey "$f" "os"
    openobj "$f"
      writekey "$f" "macintosh"
      openobj "$f"
        writesimpleentry "$f" "platform" "x64"
        writefinalentry "$f" "min_version" "10.10.0"
      closeobj "$f"
      endentry "$f"
      writekey "$f" "windows"
      openobj "$f"
        writesimpleentry "$f" "platform" "x64"
        writefinalentry "$f" "min_version" "7"
      closeobj "$f"
    closeobj "$f"
    endentry "$f"

    writekey "$f" "package_extras"
    openobj "$f"
      writesimpleentry "$f" "reverse_domain" "edu.berkeley.cnmat"
      writefinalentry "$f" "copyright" "Copyright (c) 2007-21 UC Regents"
    closeobj "$f"
    endentry "$f"

    writelistentry "$f" "tags" "Open Sound Control (OSC)" "Dynamic Programming" "CNMAT"
    writesimpleentry "$f" "version" "$version"
    writefinalentry "$f" "website" "https://github.com/CNMAT/CNMAT-odot"
    closeobj "$f"
}
writepackageinfo
