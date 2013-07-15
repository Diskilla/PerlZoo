package Shepard;

use base Dog;

sub Speak {
    my $name = $_[0]->{Name};
    return( $name, " says Grrr" );
}

sub getClass {
    my ( $class ) = __PACKAGE__;
    return $class;
}

1;