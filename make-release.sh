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

if [ $os = 1 ]
then
    platform=`uname`
    platform=$(awk -vpl="$platform" 'BEGIN {
      pl=tolower(pl)
      if ( pl == "darwin" ){
        print "MacOSX"
      }else if (pl ~ "mingw"){
        print "Windows"
      }else if(pl == "linux"){
        print "Linux"
      }
    }')
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

if [ max = 1 ]
then
    cp -r externals ../$filename/
    cp -r dev/externals ../$filename/dev/
    cp -r deprecated/externals ../$filename/deprecated/
fi
if [ pd = 1 ]
then 
    cp -r pd/*.pd_* ../$filename/pd/
    cp -r pd/dev/*.pd_* ../$filename/pd/dev/
    cp -r pd/deprecated/*.pd_* ../$filename/pd/deprecated/
fi

filestodelete=(".git" "src" "make-release.sh" "make-package-info.py" "dev-internal")
for i in ${!filestodelete[@]}
do
    rm -rf "../${filename}/${filestodelete[$i]}"
done
