#!/usr/bin/perl
use strict;
use warnings;
use Test::More;

# Load the module to be tested
use lib '../lib';
use MyUtils;

# Test cases for MyUtils module
subtest 'Testing MyUtils functions' => sub {
    # Test for a sample utility function
    is(MyUtils::sample_function('input'), 'expected_output', 'sample_function should return expected_output');

    # Add more tests as needed
};

done_testing();