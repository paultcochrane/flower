#!/usr/bin/env perl6

## A temporary testing file.
## This will be replaced by a proper test in t/ shortly.

use Flower;
use Flower::Utils::Text;

my $template='<test><item name="booya" petal:define="oops my_test_var" petal:content="oops"/><gone petal:replace="hello"/><true petal:condition="hello">This is true</true><false petal:condition="notreal">This is false</false><wrong petal:condition="not:hello">This should not show up.</wrong><upper petal:content="uc:string:hello"/></test>';

my $parser = Flower.new(:template($template));

$parser.add-modifiers(Flower::Utils::Text::all());

say $parser.parse(my_test_var => 'oh noes', hello => 'Hello World');

