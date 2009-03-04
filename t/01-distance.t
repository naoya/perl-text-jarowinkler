#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 9;

use Text::JaroWinkler qw/distance/;

is distance('al', 'al'), 1;

my $d = distance('martha', 'marhta');
ok ($d > 0.961 && $d < 0.962);

$d = distance('jones', 'johnson');
ok ($d > 0.832 && $d < 0.833);

$d = distance("abcvwxyz", "cabvwxyz");
ok ($d > 0.958 && $d < 0.959);

$d = distance("dwayne", "duane");
ok ($d > 0.84 && $d < 0.841);

$d = distance("dixon", "dicksonx");
ok ($d > 0.813 && $d < 0.814);

$d = distance("fvie", "ten");
is $d, 0;

my $d1 = distance("zac ephron", "zac efron");
my $d2 = distance("zac ephron", "kai ephron");
ok $d1 > $d2;

$d1 = distance("brittney spears", "britney spears");
$d2 = distance("brittney spears", "brittney startzman");
ok $d1 > $d2;

