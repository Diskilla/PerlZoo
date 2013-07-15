#!/usr/bin/env perl

use strict;

use Test::More tests => 4;
use lib '..';
use Animal;
# Benutzung von Animal möglich
use_ok( 'Animal' ) or exit;
# Testen ob das Objekt '$doggy' ein 'Animal' ist und "Lassie" heißt
my $doggy = Animal->New( Name => "Lassie", AttackPower => undef );
isa_ok( $doggy, 'Animal', "doggy");
is( $doggy->{Name}, 'Lassie', "doggy is named Lassie" );

ok(exists $doggy->{AttackPower}, "doggy has an AttackPower");
