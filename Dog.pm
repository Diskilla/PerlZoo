package Dog;

use base Animal;

sub Speak {
    my ( $obj ) = @_;
    my $name = $obj->{Name};

    if ($obj->{AttackPower} == undef) {
        $obj->{AttackPower} = 10;
    }

    my $attackPower = $obj->{AttackPower};
    return( $name." says Woof!\n");
}

sub Fight {
    my $self = shift;
    my $attackPower = $self->{AttackPower};
    return $attackPower;
}

sub getClass {
    my ( $class ) = __PACKAGE__;
    return $class;
}

# make Perl happy
1;