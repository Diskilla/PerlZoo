#!/usr/bin/env perl

use strict;

use Test::More tests => 7;
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
my $lassie = Dog->New(Name => "Lassie");
isa_ok( $lassie, 'Dog', "Lassie" );
is( $lassie->{Name}, 'Lassie', "lassie is named Lassie" );
# Ist Smokey ein 'Cat'-Objekt und heißt Smokey?
my $smokey = Cat->New(Name => "Smokey");
isa_ok( $smokey, 'Cat', "Smokey" );
is( $smokey->{Name}, 'Smokey', "smokey is named Smokey" );