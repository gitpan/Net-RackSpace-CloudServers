
use strict;
use warnings;

 BEGIN { require 5.010_000; } 

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Net-RackSpace-CloudServers',
  NAME      => 'Net::RackSpace::CloudServers',
  AUTHOR    => "Marco\ Fontani",
  ABSTRACT  => "Interface\ to\ RackSpace\ CloudServers\ via\ API",
  VERSION   => '0.09_20',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "YAML" => '0',
    "MooseX::StrictConstructor" => '0',
    "LWP::ConnCache::MaxKeepAliveRequests" => '0',
    "LWP::UserAgent::Determined" => '0',
    "JSON" => '0',
    "HTTP::Request" => '0',
    "Moose" => '0.87',
  },
  test => {TESTS => 't/*.t'}
);

