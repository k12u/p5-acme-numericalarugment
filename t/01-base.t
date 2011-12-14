package MyPackage;

use parent 'Acme::NumericalArgument';
sub hello {
    my ($self, $count) = @_;
    return("Hello" x $count);
}

package main;

use Test::More;

is(MyPackage->new->helloooooooooooooooooo, "Hello" x 18);
done_testing;
