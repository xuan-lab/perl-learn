#!/usr/bin/perl
use strict;
use warnings;
use Text::CSV;

# Load the dataset
my $filename = '../data/sample_dataset.csv';
my $csv = Text::CSV->new({ binary => 1, auto_diag => 1 });

open my $fh, '<', $filename or die "Could not open '$filename' $!\n";

# Read the header
my $header = $csv->getline($fh);
print "Header: ", join(", ", @$header), "\n";

# Initialize variables for summary statistics
my %summary;
my $row_count = 0;

# Process each row
while (my $row = $csv->getline($fh)) {
    $row_count++;
    foreach my $i (0 .. $#{$header}) {
        $summary{$header->[$i]} += $row->[$i];
    }
}

# Calculate and print average for each column
print "Summary Statistics:\n";
foreach my $key (keys %summary) {
    my $average = $summary{$key} / $row_count;
    print "$key: Average = $average\n";
}

close $fh;