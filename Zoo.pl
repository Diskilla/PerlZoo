#!/usr/bin/env perl

use strict;
use warnings;

use Animal;
use Dog;
use Cat;

my @pets;
# create Dog Objects
foreach my $name (qw( Butch Keagan Fluffy )) {
    push(@pets, Dog->New( Name => $name, AttackPower => undef ));
}
# create Cat Objects
foreach my $name (qw( Fritzi Smokey Mietze )) {
    push(@pets, Cat->New( Name => $name, AttackPower => undef ));
}

my $garfield = Cat->New( Name => "Garfield", AttackPower => 10 );
print $garfield->{Name};
print $garfield->Fight();

foreach my $tierchen (@pets) {
    print($tierchen->{Name}, "\n");
    print($tierchen->Fight(), "\n");
}
print "-------------------------------------\n";
