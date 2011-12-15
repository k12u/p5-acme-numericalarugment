package MyPackage;

use parent 'Acme::NumericalArgument';
sub hello {
    my ($self, $count, $arg) = @_;
    return("Hello" x $count . $arg);
}

package main;

use strict;
use warnings;
use Test::More;
use Test::Exception;

is(MyPackage->new->helloooooooooooooooooo(" World"), ("Hello" x 18)." World");
note(MyPackage->new->helloooooooooooooooooo(" World"));
dies_ok { MyPackage->new->noooo };

done_testing;
