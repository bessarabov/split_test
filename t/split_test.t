use Test::More tests => 1;
use Test::Deep;

sub test_split {
    ($_) = @_;
    split;
    return @_;
}

my @arr = test_split('a b');

cmp_deeply(\@arr, ['a', 'b'], 'test_split() works correctly')
