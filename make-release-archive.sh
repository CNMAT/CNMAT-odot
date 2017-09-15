#!/bin/sh

packagedirs=(clippings code default-definitions default-settings docs examples extensions externals extras help init interfaces java-classes java-doc javascript jsextensions jsui license.txt media misc patchers object-prototypes queries readme.txt source support templates)
nonpackagedirs=(dev deprecated)

dirs=("${packagedirs[@]}" "${nonpackagedirs[@]}")

function git_branch()
{
    local branch=`cd $1 && git branch | egrep '^\*' | awk '{print $2}'`
    echo $branch
}

function chk_same_branch()
{
    local b1=`git_branch $1`
    local b2=`git_branch $2`
    local curdir=`pwd`
    if [ "$b1" != "$b2" ]; then
	echo "ERROR: "`cd $1 && pwd` "and" `cd $2 && pwd` "are not on the same branch ($b1, $b2)"
	return 1;
    fi
}

function chk_git_status()
{
    local curdir=`pwd`
    cd $1
    git diff --exit-code > /dev/null
    if [ $? -ne 0 ]; then
	echo "ERROR: $1 contains uncommitted changes. Please commit them before making a release."
	return 1;
    fi

    git diff --cached --exit-code > /dev/null
    if [ $? -ne 0 ]; then
	echo "ERROR: $1 contains modified files that have been staged for commit. Please commit them before making a release."
	return 1;
    fi
    cd $curdir
}

function chk_repos()
{
    local ret=0;
    chk_git_status .
    ret=`expr $ret + $?`
    chk_git_status ../libo
    ret=`expr $ret + $?`
    chk_git_status ../libomax
    ret=`expr $ret + $?`
    chk_same_branch . ../libo
    ret=`expr $ret + $?`
    chk_same_branch . ../libomax
    ret=`expr $ret + $?`
    if [ $ret -ne 0 ]; then
	exit 1
    fi
}

# pass ww (wild west, or wet and wild) to make an archive without checking for uncommitted changes
if [ $# -ne 0 ]; then
    if [ $1 -ne "ww" ]; then
	chk_repos
    fi
else
    chk_repos
fi

platform=`uname`
if [ $platform = "Darwin" ]; then
	platform="MacOSX"
fi

maxstagingdir=odot
pdstagingdir=pd

#don't need to make a PD staging dir as it's already checked in and part of the repo
[ -d $maxstagingdir ] || mkdir -p $maxstagingdir

for f in ${dirs[*]}
do
	[ -e $f ] && cp -r $f $maxstagingdir
done

python make-package-info.py

cp package-info.json $maxstagingdir

maxtarballname=odot-Max-$platform-`git describe --tags --long`-`git branch | egrep '^\*' | awk '{print $2}'`.tgz
externstarballname=Max-externals-$platform-`git describe --tags --long`-`git branch | egrep '^\*' | awk '{print $2}'`.tgz
pdtarballname=odot-PD-$platform-`git describe --tags --long`-`git branch | egrep '^\*' | awk '{print $2}'`.tgz

tar zcvf $maxtarballname $maxstagingdir
tar zcvf $externstarballname externals deprecated/externals dev/externals
tar zcvf $pdtarballname $pdstagingdir
rm -rf $maxstagingdir
