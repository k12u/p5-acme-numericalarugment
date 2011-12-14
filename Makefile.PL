use inc::Module::Install;
name 'Acme-NumericalArgument';
all_from 'lib/Acme/NumericalArgument.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
