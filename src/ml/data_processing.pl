# Data processing techniques in Perl

use strict;
use warnings;
use Text::CSV;

# Function to read CSV data
sub read_csv {
    my ($file) = @_;
    my @data;

    my $csv = Text::CSV->new({ binary => 1, auto_diag => 1 });
    open my $fh, "<:encoding(utf8)", $file or die "Could not open '$file': $!";
    
    while (my $row = $csv->getline($fh)) {
        push @data, $row;
    }
    
    close $fh;
    return \@data;
}

# Function to clean data (example: remove empty fields)
sub clean_data {
    my ($data) = @_;
    my @cleaned_data;

    foreach my $row (@$data) {
        my @cleaned_row = grep { defined $_ && $_ ne '' } @$row;
        push @cleaned_data, \@cleaned_row;
    }

    return \@cleaned_data;
}

# Example usage
my $file_path = '../data/sample_dataset.csv'; # Adjust the path as necessary
my $raw_data = read_csv($file_path);
my $cleaned_data = clean_data($raw_data);

# Print cleaned data for verification
foreach my $row (@$cleaned_data) {
    print join(", ", @$row), "\n";
}