#!/usr/bin/env perl

use strict;
use warnings;

use Animal;
use Dog;
use Cat;

my @pets;
# create Dog Objects
foreach my $name (qw( Muecke Keagan Fluffy )) {
    push(@pets, Dog->New( Name => $name, AttackPower => undef ));
}
# create Cat Objects
foreach my $name (qw( Fritzi Smokey Mietze )) {
    push(@pets, Cat->New( Name => $name, AttackPower => 11 ));
}

my $index = 0;

while ( $index <= $#pets ) {
    foreach my $tierchen (@pets) {
        print(  $pets[$index]->{Name},
                " => ",
                $pets[$index]->get_AttackPower(),
                "\n"
             );
        $index++;
    }
}
print "-------------------------------------\n";
