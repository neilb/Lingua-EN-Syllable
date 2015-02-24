#! perl

use 5.006;
use strict;
use warnings;

use Lingua::EN::Syllable qw/ syllable /;
use Test::More 0.88;

my %EXPECTED_SYLLABLE_COUNT =
(
    'hoopty'    => 2,
);

plan tests => int(keys %EXPECTED_SYLLABLE_COUNT);

foreach my $word (sort keys %EXPECTED_SYLLABLE_COUNT) {
    my $syllable_count = syllable($word);
    cmp_ok($syllable_count, '==', $EXPECTED_SYLLABLE_COUNT{$word},
           "number of syllables in '$word' should be $EXPECTED_SYLLABLE_COUNT{$word}");
}
