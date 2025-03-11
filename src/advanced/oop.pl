package MyClass;

sub new {
    my $class = shift;
    my $self = {
        attribute1 => shift,
        attribute2 => shift,
    };
    bless $self, $class;
    return $self;
}

sub method1 {
    my $self = shift;
    return "Attribute 1: " . $self->{attribute1};
}

sub method2 {
    my $self = shift;
    return "Attribute 2: " . $self->{attribute2};
}

1;