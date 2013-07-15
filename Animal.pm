package Animal;

sub New {
    my $class = shift( @_ );

    my $self = {};
    $self->{Name} = undef;

    if ($obj->{AttackPower} == undef) {
        $obj->{AttackPower} = 10;
    }

    my $attackPower = $obj->{AttackPower};
    $self->{AttackPower} = 10;

    return bless({ @_ }, $class);
}

sub Fight {
    my $self = shift;
    return $self->{AttackPower};
}

# DESTROY ist nur nötig, wenn man beim 'Aufäumen' auch eine Rückmeldung will.
# Perl macht dies automatisch.
sub DESTROY {
    
}
# make Perl happy
1;