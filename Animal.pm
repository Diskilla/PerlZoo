package Animal;

sub New {
    my $class = shift( @_ );
    my $self = {};
    $self->{Name} = undef;
    $self->{AttackPower} = 10;
    return bless({ @_ }, $class);
}

sub get_AttackPower {
    $self = shift;
    if ( $self->{AttackPower} == undef ) {
        $self->{AttackPower} = 10;
    }
    return $self->{AttackPower};
}

sub Fight ( animal1 ){
    my $self = shift( @_ );
    my $animal1_erg = $self[0]->get_AttackPower();
    my $animal2_erg = $self[1]->get_AttackPower();
    if ( $animal1_erg > $animal2_erg ) {
        return animal1;
    } else {
        return animal2;
    }
}

# DESTROY ist nur nötig, wenn man beim 'Aufäumen' auch eine Rückmeldung will.
# Perl macht dies automatisch.
sub DESTROY {
    
}
# make Perl happy
1;
