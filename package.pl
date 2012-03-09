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

my $version_file;
open($version_file, ">latest-$platform-version") or die("can't open file: $version_file");
print $version_file "VERSION: $version\n";
print $version_file "PLATFORM: $platform\n";
print $version_file "FILENAME: $dirname.tgz\n"; 
close($version_file);

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
	system("tar", "--exclude=.svn", "-z", "-c", "-v", "-f", "$dirname.tgz", $dirname);
    }elsif($ARGV[0] eq "install"){
	unless(-d "$ARGV[1]/odot"){
	    system("mkdir", "$ARGV[1]/odot");
	}
	system("(cd $dirname; tar --exclude='.svn' -c -f - *) | (cd $ARGV[1]/odot; tar xfp -)");
    }
}
