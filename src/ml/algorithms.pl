# This file introduces simple machine learning algorithms implemented in Perl, such as linear regression or k-means clustering.

sub linear_regression {
    my ($data) = @_;
    my $n = scalar @$data;
    
    my $sum_x = 0;
    my $sum_y = 0;
    my $sum_xy = 0;
    my $sum_x2 = 0;

    foreach my $point (@$data) {
        my ($x, $y) = @$point;
        $sum_x += $x;
        $sum_y += $y;
        $sum_xy += $x * $y;
        $sum_x2 += $x ** 2;
    }

    my $slope = ($n * $sum_xy - $sum_x * $sum_y) / ($n * $sum_x2 - $sum_x ** 2);
    my $intercept = ($sum_y - $slope * $sum_x) / $n;

    return ($slope, $intercept);
}

sub k_means {
    my ($data, $k, $iterations) = @_;
    my @centroids = ();
    
    # Initialize centroids randomly
    for (1..$k) {
        push @centroids, $data->[rand @$data];
    }

    for (1..$iterations) {
        my %clusters;
        
        # Assign points to the nearest centroid
        foreach my $point (@$data) {
            my $closest = 0;
            my $min_distance = inf;

            for my $i (0..$#centroids) {
                my $distance = sqrt(($point->[0] - $centroids[$i][0])**2 + ($point->[1] - $centroids[$i][1])**2);
                if ($distance < $min_distance) {
                    $min_distance = $distance;
                    $closest = $i;
                }
            }
            push @{$clusters{$closest}}, $point;
        }

        # Update centroids
        foreach my $i (0..$#centroids) {
            if (exists $clusters{$i}) {
                my $sum_x = 0;
                my $sum_y = 0;
                my $count = scalar @{$clusters{$i}};
                
                foreach my $point (@{$clusters{$i}}) {
                    $sum_x += $point->[0];
                    $sum_y += $point->[1];
                }
                
                $centroids[$i] = [$sum_x / $count, $sum_y / $count];
            }
        }
    }

    return \@centroids;
}

1;