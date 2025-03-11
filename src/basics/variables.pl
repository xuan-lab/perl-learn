# This file introduces variables in Perl, showcasing scalar, array, and hash data types with examples of declaration and usage.

# Scalar variable
my $scalar_variable = "Hello, Perl!";
print "Scalar: $scalar_variable\n";

# Array variable
my @array_variable = (1, 2, 3, 4, 5);
print "Array: @array_variable\n";

# Accessing array elements
print "First element of array: $array_variable[0]\n";

# Hash variable
my %hash_variable = (
    name => "John Doe",
    age  => 30,
    city => "New York"
);
print "Hash: $hash_variable{name}, $hash_variable{age}, $hash_variable{city}\n";

# Accessing hash values
print "Name from hash: $hash_variable{name}\n";