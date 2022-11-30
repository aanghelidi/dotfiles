use strict;
use warnings;
use v5.34;

#Storing a direction is just the numbers -1, +1i, +1, -1i instead of up/right/down/left or north/east/south/west.
#Rotating the direction is just multiplying with -1i (clockwise) or +1i (counter-clockwise).
#In this example x == real == row and y == imag == col. When x and y are swapped, the rotation goes in the other direction`
##use Math::Complex;
#$NEIGHBOURS_DELTAS = [-1, 1, -1i, 1i]

#open( my $f, "<", "input.txt" );
#my @lines = <$f>;
#say "@lines";

my $ans = 0;
open( my $f, "<", "input.txt" );
while (<$f>) {
    $ans += $_;
}
say $ans;
