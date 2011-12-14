package Acme::NumericalArgument;
use strict;
use warnings;
our $VERSION = '0.01';

sub new {
    my $proto = shift;
    return bless +{}, $proto;
}

sub AUTOLOAD {
    my ($self) = shift;
    our $AUTOLOAD;
    my $method = $AUTOLOAD;
    $method =~ s/.+:://;
    my ($prefix, $count, $last) = $method =~ m/(.+?)((.)(\3+))$/;
    my $base_method = $prefix.$last;
    $self->$base_method(length($count));
}

sub DESTROY {}

1;
__END__

=head1 NAME

Acme::NumericalArgument - dynamic numerical argument by method name

=head1 SYNOPSIS

  use Acme::NumericalArgument;

=head1 DESCRIPTION

Acme::NumericalArgument is

=head1 AUTHOR

KAWAMOTO Minoru E<lt>kawamoto.minoru@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
