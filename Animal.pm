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
    } else {
        $self->{AttackPower};
    }
    return $self->{AttackPower};
}

sub Fight {
    my $self = shift( @_ );
    my $animal1_erg = $_[0]->get_AttackPower();
    my $animal2_erg = $_[1]->get_AttackPower();
    if ( $animal1_erg > $animal2_erg ) {
        return $_[0]->{Name};
    } elsif ( $animal1_erg == $animal2_erg ) {
        return "draw"
    } else {
        return $_[1]->{Name};
    }
    return($_[0], " => $animal1_erg\n", $_[1], " => $animal2_erg");
}

# DESTROY ist nur nötig, wenn man beim 'Aufäumen' auch eine Rückmeldung will.
# Perl macht dies automatisch.
sub DESTROY {
    my $self = shift;
}
# Autoload Methode um Aufrufe von unbekannten Subroutinen abzufangen.
sub AUTOLOAD {
    our $AUTOLOAD;
    ( my $method = $AUTOLOAD ) =~ s/.*:://s;
    if ( $method eq "eat" ) {
        eval q{
            sub eat {
                my $self = shift;
                $self->{AttackPower} = ( $self->{AttackPower} + 1 );
                return "gained one AP";
            }
        };
        die $@ if $@;
        goto &eat;
    } else {
        croak("$_[0] does not know how to $method\n");
    }
    warn "Attempt to call $AUTOLOAD failed.\n";
}

# make Perl happy
1;
