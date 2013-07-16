#!/usr/bin/env perl
# Autor: Josef Florian Sedlmeier

use strict;

use Test::More tests => 13;
use lib '..';
use Animal;
use Dog;
use Cat;
use Goldfish;

# Benutzung von Animal möglich
use_ok( 'Animal' ) or exit;
# Testen ob das Objekt '$doggy' ein 'Animal' ist und "Lassie" heißt
my $doggy = Animal->New( Name => "Lassie", AttackPower => undef );
isa_ok( $doggy, 'Animal', "doggy");
is( $doggy->{Name}, 'Lassie', "doggy is named Lassie" );

ok(exists $doggy->{AttackPower}, "doggy has an AttackPower");

# Benutzung von Dog, Cat und Goldfish möglich
use_ok( 'Dog' ) or exit;
use_ok( 'Cat' ) or exit;
use_ok( 'Goldfish' ) or exit;

my $kitty = Cat->New( Name => "Fritzi", AttackPower => 13 );
my $fishy = Goldfish->New( Name => "Wanda", AttackPower => 2);

isa_ok( $kitty, 'Cat', "Fritzi" );
is( $kitty->{Name}, 'Fritzi', "kitty is named Fritzi" );
ok(exists $kitty->{AttackPower}, "kitty has an AttackPower" );

isa_ok( $fishy, 'Goldfish', "Wanda" );
is( $fishy->{Name}, 'Wanda', "fishy is named Wanda" );
ok(exists $fishy->{AttackPower}, "fishy has an AttackPower" );