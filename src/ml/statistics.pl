# Basic statistical functions in Perl

sub mean {
    my @numbers = @_;
    my $sum = 0;
    $sum += $_ for @numbers;
    return $sum / @numbers;
}

sub median {
    my @numbers = sort { $a <=> $b } @_;
    my $count = @numbers;
    return $count % 2 ? $numbers[$count / 2] : ($numbers[$count / 2 - 1] + $numbers[$count / 2]) / 2;
}

sub standard_deviation {
    my @numbers = @_;
    my $mean = mean(@numbers);
    my $sum_squared_diff = 0;
    $sum_squared_diff += ($_ - $mean) ** 2 for @numbers;
    return sqrt($sum_squared_diff / @numbers);
}

1;