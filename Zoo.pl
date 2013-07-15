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

# Ausgabe der "normalen" Angriffswerte.
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
# Ausgabe der Angriffswerte bei ersten "Spezialattacken".
my $petIndex = 0;
foreach my $i (@pets) {
    if ($pets[$petIndex]->getClass() eq 'Dog') {
        print(  $pets[$petIndex]->{Name},
                " => ",
                $pets[$petIndex]->Bite(),
                "\n"
                );
    } elsif ($pets[$petIndex]->getClass() eq 'Cat'){
        print(  $pets[$petIndex]->{Name},
                " => ",
                $pets[$petIndex]->Claw(),
                "\n"
                );
    } else {
        print(  $pets[$petIndex]->{Name},
                " => ",
                $pets[$petIndex]->Fight(),
                "\n"
                );
    }
    $petIndex++;
}
print "-------------------------------------\n";

