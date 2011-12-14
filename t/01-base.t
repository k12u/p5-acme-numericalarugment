package MyPackage;

use parent 'Acme::NumericalArgument';
sub hello {
    my ($self, $count) = @_;
    return("Hello" x $count);
}

package main;

use Test::More;
use Test::Exception;

is(MyPackage->new->helloooooooooooooooooo, "Hello" x 18);
note(MyPackage->new->helloooooooooooooooooo);
dies_ok { MyPackage->new->noooo };

done_testing;
