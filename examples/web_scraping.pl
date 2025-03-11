#!/usr/bin/perl
use strict;
use warnings;
use LWP::UserAgent;
use HTML::TreeBuilder 5 -weak; 

# Create a user agent object
my $ua = LWP::UserAgent->new;

# Define the URL to scrape
my $url = 'http://example.com';

# Fetch the HTML content
my $response = $ua->get($url);

# Check if the request was successful
if ($response->is_success) {
    # Parse the HTML content
    my $tree = HTML::TreeBuilder->new;
    $tree->parse($response->decoded_content);
    
    # Extract and print the title of the page
    my $title = $tree->look_down(_tag => 'title')->as_text;
    print "Title: $title\n";
    
    # Clean up the tree
    $tree->delete;
} else {
    die "Failed to fetch the URL: " . $response->status_line;
}