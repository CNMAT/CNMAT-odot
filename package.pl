#!/usr/bin/perl
use strict;
use warnings;
use File::Copy;

#my $platform = shift or die "you must specify an argument (mac or win)";
my $platform = $^O;

my $objpath = "./build/objects";
my @patches = ("help", "abstractions", "demos", "overview");

my $version = 0.0;

open odot_version, "odot_version.h" or die "couldn't find odot_version.h!";

while(<odot_version>){
    if(/\#define\s+ODOT_VERSION\s+\"(.*)\"/){
	$version = $1;
	last;
    }
}

my $dirname = "odot-$platform-$version";

if((@ARGV) > 0){
    if($ARGV[0] eq "clean"){
	system("rm", "-rf", $dirname);
	system("rm", "-rf", $dirname . ".tgz");
	exit;
    }
}

if(-d $dirname){
    system("rm", "-rf", $dirname);
}

mkdir($dirname);
system("cp", "-r", "$objpath", "$dirname/");
foreach my $p (@patches){
    system("cp", "-r", "patches/$p", "$dirname/");
}

system("cp", "README_ODOT.txt", "$dirname/");

if((@ARGV) > 0){
    if($ARGV[0] eq "archive"){
	system("tar", "zcvf", "$dirname.tgz", $dirname);
    }elsif($ARGV[0] eq "install"){
	#system("mkdir", "$ARGV[1]/$dirname");
	system("tar --exclude='.svn' -c -f - $dirname | (cd $ARGV[1]; tar xfp -)");
    }
}
