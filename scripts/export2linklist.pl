#! /opt/local/bin/perl

use strict;
use warnings;

my $p=0;
while(<>){
    chomp;
    if($p==1){
	if(/#(.+)/){
	    print "$1\n";
	}else{
	    print "$_\n";
	}
    }
    if(/^-$/){
	$p=1;
    }
}
