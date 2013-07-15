package Goldfish;

use base Animal;

use Animal;

my $self = shift;

sub Speak {
    my $obj = shift;
    my $name = $obj->{Name};
    return ( $name." says Blub!\n" );
}

sub getClass {
    my ( $class ) = __PACKAGE__;
    return $class;
}

sub Fight {
    my $self = shift;
    my $attackPower = $self->get_AttackPower() - 8;
    return $attackPower;
}

# make Perl happy
1;
