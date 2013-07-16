# Autor: Josef Florian Sedlmeier

package Goldfish;

use base Animal;

use Animal;

my $self = shift;
$self->{AttackPower} = 2;

sub Speak {
    my $obj = shift;
    my $name = $obj->{Name};
    return ( $name." says Blub!\n" );
}

sub getClass {
    my ( $class ) = __PACKAGE__;
    return $class;
}

sub Surfer {
    my $self = shift;
    my $attackPower = $self->get_AttackPower() + 15;
    return $attackPower;
}
# make Perl happy
1;
