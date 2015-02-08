#! /opt/local/bin/perl

use strict;
use warnings;

my $p=1;
while(<>){
    chomp;
    if(/^-$/){
	$p=0;
    }
    if($p==1){
	if(/#graph/){
	    # do nothing
	}elsif(/#(.+)/){
	    print "$1\n";
	}else{
	    print "$_\n";
	}
    }
}
