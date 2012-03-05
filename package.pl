#!/usr/bin/perl
use strict;
use warnings;
use File::Copy;

my $objpath = "./build/objects";
my @patches = ("help", "abstractions", "demos", "overview");

my $platform = shift or die "you must specify a platform (mac or win)";
if(!($platform eq "mac") && ($platform eq "win")){
    print "platform must be \"mac\" or \"win\"\n";
    exit;
}

my $version = 0.0;

open odot_version, "odot_version.h" or die "couldn't find odot_version.h!";

while(<odot_version>){
    if(/\#define\s+ODOT_VERSION\s+\"(.*)\"/){
	$version = $1;
	last;
    }
}

my $dirname = "odot-$platform-$version";
if(-d $dirname){
    system("rm", "-rf", $dirname);
}
=pod
if(-d $dirname){
    print "$dirname exists\n";
    exit;
}
=cut
mkdir($dirname);
system("cp", "-r", "$objpath", "$dirname/");
foreach my $p (@patches){
    system("cp", "-r", "patches/$p", "$dirname/");
}

system("cp", "README_ODOT.txt", "$dirname/");
#system("tar", "zcvf", "$dirname.tgz", $dirname);
