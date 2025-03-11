# Regular Expressions in Perl

# This script demonstrates the use of regular expressions in Perl for pattern matching and text manipulation.

# Example 1: Simple pattern matching
my $string = "Hello, World!";
if ($string =~ /World/) {
    print "Pattern found!\n";
} else {
    print "Pattern not found.\n";
}

# Example 2: Extracting a substring
my $text = "My email is example@example.com";
if ($text =~ /(\w+@\w+\.\w+)/) {
    print "Extracted email: $1\n";
}

# Example 3: Replacing text
my $sentence = "I love Perl programming.";
$sentence =~ s/Perl/Python/;
print "Updated sentence: $sentence\n";

# Example 4: Splitting a string
my $csv_line = "name,age,city";
my @fields = split(/,/, $csv_line);
print "Fields: ", join(", ", @fields), "\n";

# Example 5: Validating input
my $phone_number = "123-456-7890";
if ($phone_number =~ /^\d{3}-\d{3}-\d{4}$/) {
    print "Valid phone number format.\n";
} else {
    print "Invalid phone number format.\n";
}