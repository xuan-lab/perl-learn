# File: /perl-learn/perl-learn/src/advanced/file_handling.pl

# This script demonstrates file input and output operations in Perl.

# Open a file for writing
open(my $fh, '>', 'output.txt') or die "Could not open file 'output.txt' $!";

# Write some data to the file
print $fh "Hello, World!\n";
print $fh "This is a file handling example in Perl.\n";

# Close the file
close($fh);

# Open the file for reading
open(my $fh_read, '<', 'output.txt') or die "Could not open file 'output.txt' $!";

# Read and print the contents of the file
while (my $line = <$fh_read>) {
    print $line;
}

# Close the file
close($fh_read);