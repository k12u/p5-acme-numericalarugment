package MyPackage;

use parent 'Acme::NumericalArgument';
sub hello {
    my ($self, $count) = @_;
    for (0..$count) {
        print("Hello\n");
    }
}

package main;

MyPackage->new->helloooooooooooooooooo;
