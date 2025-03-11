# Subroutines in Perl

# This script demonstrates how to define and call subroutines in Perl.
# It includes examples of passing parameters and returning values.

# Define a simple subroutine
sub greet {
    my ($name) = @_;  # Get the parameter
    return "Hello, $name!";  # Return a greeting
}

# Call the subroutine and print the result
my $greeting = greet("World");
print "$greeting\n";  # Output: Hello, World!

# Subroutine with multiple parameters
sub add {
    my ($a, $b) = @_;  # Get the parameters
    return $a + $b;    # Return the sum
}

# Call the add subroutine and print the result
my $sum = add(5, 10);
print "The sum of 5 and 10 is: $sum\n";  # Output: The sum of 5 and 10 is: 15

# Subroutine with default parameters
sub multiply {
    my ($a, $b) = @_;
    $b //= 1;  # Default value for $b is 1
    return $a * $b;  # Return the product
}

# Call the multiply subroutine with one parameter
my $product = multiply(7);
print "The product of 7 and default value is: $product\n";  # Output: The product of 7 and default value is: 7

# Call the multiply subroutine with two parameters
$product = multiply(7, 3);
print "The product of 7 and 3 is: $product\n";  # Output: The product of 7 and 3 is: 21