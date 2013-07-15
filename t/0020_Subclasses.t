#!/usr/bin/env perl

use strict;

use Test::More tests => 13;
use lib '..';

use Animal;
use Dog;
use Shepard;
use Cat;
# Modulzugriff testen'
use_ok( 'Dog' ) or exit;
use_ok( 'Cat' ) or exit;
use_ok( 'Shepard' ) or exit;

# Ist Lassie ein 'Dog'-Objekt und heißt Lassie?
my $lassie = Dog->New( Name => "Lassie", AttackPower => undef );
isa_ok( $lassie, 'Dog', "Lassie" );
is( $lassie->{Name}, 'Lassie', "lassie is named Lassie" );

# hat Lassie eine AttackPower?
ok(exists $lassie->{AttackPower}, "Lassie has an AttackPower");

# Ist Smokey ein 'Cat'-Objekt und heißt Smokey?
my $smokey = Cat->New( Name => "Smokey", AttackPower => 12 );
isa_ok( $smokey, 'Cat', "Smokey" );
is( $smokey->{Name}, 'Smokey', "smokey is named Smokey" );

# hat Smokey eine AttackPower?
ok(exists $lassie->{AttackPower}, "Smokey has an AttackPower");

# können Lassie und Smokey kämpfen?
can_ok( $lassie, 'Fight' );
can_ok( $smokey, 'Fight' );

# können beide ihre AttackPower ausgeben?
can_ok( $lassie, 'get_AttackPower' );
can_ok( $smokey, 'get_AttackPower' );
