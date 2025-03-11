# This file explains how to create and use modules in Perl, including exporting functions and variables.

package MyModule;

use strict;
use warnings;
use Exporter 'import';

# Exported functions
our @EXPORT = qw(hello greet);

# A simple function that returns a greeting message
sub hello {
    return "Hello from MyModule!";
}

# A function that greets a user by name
sub greet {
    my ($name) = @_;
    return "Hello, $name!";
}

1;  # End of MyModule package