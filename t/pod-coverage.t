#!perl
use strict;
use warnings;
use Test::More;

plan skip_all => 'author tests run only if $ENV{CLOUDSERVERS_AUTHOR_TESTS} set'
  if ( !defined $ENV{'CLOUDSERVERS_AUTHOR_TESTS'}
    || !$ENV{'CLOUDSERVERS_AUTHOR_TESTS'} );

# Ensure a recent version of Test::Pod::Coverage
my $min_tpc = 1.08;
eval "use Test::Pod::Coverage $min_tpc";
plan skip_all =>
  "Test::Pod::Coverage $min_tpc required for testing POD coverage"
  if $@;

# Test::Pod::Coverage doesn't require a minimum Pod::Coverage version,
# but older versions don't recognize some common documentation styles
my $min_pc = 0.18;
eval "use Pod::Coverage $min_pc";
plan skip_all => "Pod::Coverage $min_pc required for testing POD coverage"
  if $@;

eval "use Pod::Coverage::Moose";
plan skip_all => "Pod::Coverage::Moose required for testing POD coverage"
  if $@;

all_pod_coverage_ok( { coverage_class => 'Pod::Coverage::Moose' } );
