#!/usr/bin/env perl
# Autor: Josef Florian Sedlmeier

use strict;
use warnings;

use Animal;
use Dog;
use Cat;
use Goldfish;

my @pets;
# create Dog Objects
foreach my $name (qw( Muecke Keagan Fluffy )) {
    push(@pets, Dog->New( Name => $name, AttackPower => undef ));
}
# create Cat Objects
foreach my $name (qw( Fritzi Smokey Mietze )) {
    push(@pets, Cat->New( Name => $name, AttackPower => 11 ));
}
# create Goldfish
my $fishy = Goldfish->New( Name => "Wanda", AttackPower => 2 );

# Ausgabe der "normalen" Angriffswerte.
my $index = 0;
print( "'Normaler' Angriff\n" );
while ( $index <= $#pets ) {
    foreach my $tierchen (@pets) {
        print(  $pets[$index]->{Name},
                " => ",
                $pets[$index]->get_AttackPower(),
                "\n"
             );
        $index++;
    }
print(  $fishy->{Name},
        " => ",
        $fishy->get_AttackPower(),
        "\n"
     );
}
print "-------------------------------------\n";
# Ausgabe der Angriffswerte bei ersten "Spezialattacken".
my $petIndex = 0;
print("'Spezialangriff'\n");
foreach my $i (@pets) {
    if ($pets[$petIndex]->getClass() eq 'Dog') {
        print(  $pets[$petIndex]->{Name}, " bites for",
                " => ",
                $pets[$petIndex]->Bite(),
                "\n"
                );
    } elsif ($pets[$petIndex]->getClass() eq 'Cat'){
        print(  $pets[$petIndex]->{Name}, " claws for",
                " => ",
                $pets[$petIndex]->Claw(),
                "\n"
                );
    } else {
        print(  $pets[$petIndex]->{Name}, " hits for",
                " => ",
                $pets[$petIndex]->Fight(),
                "\n"
                );
    }
    $petIndex++;
}
print "-------------------------------------\n";
# test für AUTOLOAD
$fishy->set_AttackPower(15);
print( "Wanda eats, ", $fishy->eat(), "\n" );
print("AP Wanda: ", $fishy->get_AttackPower(), "\n" );
print("AP Fritzi: ", $pets[3]->get_AttackPower(), "\n" );
print( "\nWanda vs. Fritzi\n" );
print( "Winner: ", $fishy->Fight( $fishy, $pets[3] ), "\n" ); # Fisch Wanda vs. Katze Fritzi
