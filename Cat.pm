package Cat;

use base Animal;

sub Speak {
    my $obj = shift;
    my $name = $obj->{Name};
    return ( $name." says Mew!\n" );
}

#sub Fight {
#    my ($self) = shift;
#    my $attackPower = $self->{AttackPower};
#    return $attackPower;
#}

sub getClass {
    my ($class) = __PACKAGE__;
    return $class;
}

1;