package Acme::NumericalArgument;
use strict;
use warnings;
our $VERSION = '0.01';

sub new {
    my $proto = shift;
    return bless +{}, $proto;
}

sub AUTOLOAD {
    my ($self, @args) = @_;
    our $AUTOLOAD;
    my $method = $AUTOLOAD;
    $method =~ s/.*:://;
    my ($prefix, $count, $last) = $method =~ m/(.+?)((.)(\3+))$/;
    my $base_method = $prefix.$last;
    die "$base_method not defined" unless $self->can($base_method);
    $self->$base_method(length($count), @args);
}

sub DESTROY {}

1;
__END__

=head1 NAME

Acme::NumericalArgument - dynamic numerical argument by method name

=head1 SYNOPSIS

  package MyPackage;
  use parent qw/Acme::NumericalArgument/;
  sub hello {
    my ($self, $count) = @_;
    return("Hello" x $count);
  }

  package main;
  print MyPackage->new->helloooooooooooooooooo;
  # produces "HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello"

=head1 DESCRIPTION

Acme::NumericalArgument is module for passeing dynamic numeric argument to the methods of the sub-classes.

=head1 AUTHOR

KAWAMOTO Minoru E<lt>minoru-cpan@k12u.orgE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
