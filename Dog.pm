package Dog;

use base Animal;

use Animal;

my $self = shift;

sub Speak {
    my $obj = shift;
    my $name = $obj->{Name};
    return ( $name." says Woof!\n");
}

sub getClass {
    my ( $class ) = __PACKAGE__;
    return $class;
}

# make Perl happy
1;
