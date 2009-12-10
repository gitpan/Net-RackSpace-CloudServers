
use strict;
use warnings;

 BEGIN { require 5.010_000; } 

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Net-RackSpace-CloudServers',
  NAME      => 'Net::RackSpace::CloudServers',
  AUTHOR    => "Marco\ Fontani",
  ABSTRACT  => "Interface\ to\ RackSpace\ CloudServers\ via\ API",
  VERSION   => '0.09_40',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "YAML" => '0',
    "LWP::ConnCache::MaxKeepAliveRequests" => '0',
    "Any::Moose" => '0.10',
    "LWP::UserAgent::Determined" => '0',
    "JSON" => '0',
    "HTTP::Request" => '0',
  },
  test => {TESTS => 't/*.t'}
);

