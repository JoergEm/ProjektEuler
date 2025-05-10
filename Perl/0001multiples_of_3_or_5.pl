#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw(sum);

print sum grep { $_ % 3 == 0 || $_ % 5 == 0 } (0..999);


__END__

 Perl     
 0001multiples_of_3_or_5.pl
 
 Copyright 2025 @GitHub JoergEm

 This program is WITHOUT ANY WARRANTY; without even the implied
 warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.