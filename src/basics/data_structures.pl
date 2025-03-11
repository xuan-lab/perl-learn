# data_structures.pl

# This file introduces data structures in Perl, focusing on arrays and hashes, with examples of how to manipulate them.

# Arrays
my @fruits = ('apple', 'banana', 'cherry');
print "Fruits:\n";
foreach my $fruit (@fruits) {
    print "$fruit\n";
}

# Adding an element to an array
push(@fruits, 'date');
print "\nAfter adding a fruit:\n";
foreach my $fruit (@fruits) {
    print "$fruit\n";
}

# Hashes
my %colors = (
    'red'   => '#FF0000',
    'green' => '#00FF00',
    'blue'  => '#0000FF',
);
print "\nColors:\n";
foreach my $color (keys %colors) {
    print "$color: $colors{$color}\n";
}

# Adding a key-value pair to a hash
$colors{'yellow'} = '#FFFF00';
print "\nAfter adding a color:\n";
foreach my $color (keys %colors) {
    print "$color: $colors{$color}\n";
}