package Cat;

use base Animal;

my $self = shift;
my $attackPower = Animal->{AttackPower};

sub Speak {
    my $obj = shift;
    my $name = $obj->{Name};
    return ( $name." says Mew!\n" );
}

sub Fight {
    my ($self) = shift;
    my $attackPower = $attackPower + 2;
    return $attackPower;
}

sub getClass {
    my ($class) = __PACKAGE__;
    return $class;
}

1;