# Copyright (C) 2025 VD_Priv8 (VD171)
# This code is licensed under GNU AGPLv3 (https://www.gnu.org/licenses/agpl-3.0.html).
# See the LICENSE file for details.

use strict;
use warnings;
use Digest::SHA qw(sha256_hex);
use Math::BigInt;

die "Usage: perl $0 <initial_seed> <final_seed> <participants> <expected_hash>\n"
    unless @ARGV == 4;

my ($initial_seed, $final_seed, $participants, $expected_hash) = @ARGV;

my $combined = "$initial_seed|$participants|$final_seed";
my $calculated_hash = sha256_hex($combined);

if ($calculated_hash ne lc($expected_hash)) {
    die "❌ Hash verification failed.\n";
}

my $draw_result = Math::BigInt->new("0x$calculated_hash") % $participants + 1;

print "Initial Seed:     $initial_seed\n";
print "Final Seed:       $final_seed\n";
print "Participants:     $participants\n";
print "Expected Hash:    $expected_hash\n";
print "Calculated Hash:  $calculated_hash\n";
print "\n🎯 DRAW RESULT:   $draw_result\n";
print "==============================\n";
