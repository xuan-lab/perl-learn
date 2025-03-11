# Control flow statements in Perl

# If-else statement example
my $number = 10;

if ($number > 0) {
    print "$number is positive.\n";
} elsif ($number < 0) {
    print "$number is negative.\n";
} else {
    print "$number is zero.\n";
}

# Unless statement example
my $is_raining = 0;

unless ($is_raining) {
    print "It's a nice day!\n";
}

# For loop example
print "Counting from 1 to 5:\n";
for my $i (1..5) {
    print "$i\n";
}

# While loop example
my $count = 1;
print "Counting using while loop:\n";
while ($count <= 5) {
    print "$count\n";
    $count++;
}