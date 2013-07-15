package Dog;

use base Animal;

sub Speak {
    my ( $obj ) = @_;
    my $name = $obj->{Name};

    return( $name." says Woof!\n");
}

sub Fight {
    my ($self) = shift;
    my $attackPower = $attackPower + 1;
    return $attackPower;
}

sub getClass {
    my ( $class ) = __PACKAGE__;
    return $class;
}

# make Perl happy
1;