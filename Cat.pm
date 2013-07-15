package Cat;

use base Animal;

use Animal;

my $self = shift;

sub Speak {
    my $obj = shift;
    my $name = $obj->{Name};
    return ( $name." says Mew!\n" );
}

sub getClass {
    my ( $class ) = __PACKAGE__;
    return $class;
}

# make Perl happy
1;
