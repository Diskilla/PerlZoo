package Shepard;

use base Dog;

sub Speak {
    my $name = $_[0]->{Name};
    return( $name, " says Grrr" );
}

# sub Fight {
#     my $attackPower = 15;
#     return $attackPower;
# }

sub getClass {
    my ( $class ) = __PACKAGE__;
    return $class;
}

1;