#!/bin/bash

require_clean_work_tree () {
    # Update the index
    git update-index -q --ignore-submodules --refresh
    err=0

    # Disallow unstaged changes in the working tree
    if ! git diff-files --quiet --ignore-submodules --
    then
	echo >&2 "cannot $1: you have unstaged changes."
	git diff-files --name-status -r --ignore-submodules -- >&2
	err=1
    fi

    # Disallow uncommitted changes in the index
    if ! git diff-index --cached --quiet HEAD --ignore-submodules --
    then
	echo >&2 "cannot $1: your index contains uncommitted changes."
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

#xcodebuild -project src/x.xcodeproj -alltargets clean || exit 1
#xcodebuild -project src/x.xcodeproj -alltargets build || exit 1

#filename=`date +%s`
filename=odot-`git describe --tags`
git clone . ../$filename
cp -r externals ../$filename/
cp -r dev/externals ../$filename/dev/
cp -r deprecated/externals ../$filename/deprecated/
cp -r pd/*.pd_* ../$filename/pd/
cp -r pd/dev/*.pd_* ../$filename/pd/dev/
cp -r pd/deprecated/*.pd_* ../$filename/pd/deprecated/
zip -r -X ../$filename.zip ../$filename
rm -rf ../$filename
