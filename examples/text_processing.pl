# Text processing examples in Perl

# Example 1: Searching for a substring in a string
my $text = "Perl is a great programming language.";
my $substring = "great";

if ($text =~ /$substring/) {
    print "Found the substring '$substring' in the text.\n";
} else {
    print "Substring '$substring' not found in the text.\n";
}

# Example 2: Replacing a substring in a string
my $new_text = $text;
$new_text =~ s/great/amazing/;
print "After replacement: $new_text\n";

# Example 3: Formatting text
my $name = "Alice";
my $age = 30;
printf("Name: %s, Age: %d\n", $name, $age);

# Example 4: Splitting a string into words
my $sentence = "This is a sample sentence.";
my @words = split(' ', $sentence);
print "Words in the sentence: @words\n";

# Example 5: Joining an array of strings into a single string
my @fruits = ("apple", "banana", "cherry");
my $fruit_string = join(', ', @fruits);
print "Fruits: $fruit_string\n";