#!/usr/bin/env perl

use strict;
use warnings;

use Animal;
use Dog;
use Cat;
use Shepard;

my @pets;
# create Dog Objects
foreach my $name (qw( Butch Keagan Fluffy )) {
    push(@pets, Dog->New(Name=>$name));
}
# create Cat Objects
foreach my $name (qw( Fritzi Smokey Mietze )) {
    push(@pets, Cat->New( Name => $name ));
}
my $angryDog = Shepard->New( Name => "Spike" );

print $angryDog->Fight();
foreach my $tierchen (@pets) {
    print $tierchen->{AttackPower};
}
print "-------------------------------------\n";

foreach my $pet (@pets) {
    print $angryDog->{Name}. " fights against ". $pet->{Name}. " the ". $pet->getClass() . "\n";
    if ( $angryDog->Fight() > $pet->Fight() ) {
        print $angryDog->{Name}. " wins\n";
    } elsif ( $angryDog->Fight() >= $pet->Fight() ) {
        print "that was a draw\n";
    } else {
        print $angryDog->{Name}. " lost\n";
    }
}