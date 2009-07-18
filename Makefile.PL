
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Net-RackSpace-CloudServers',
  NAME      => 'Net::RackSpace::CloudServers',
  AUTHOR    => 'Marco\ Fontani',
  ABSTRACT  => 'Interface\ to\ RackSpace\ CloudServers\ via\ API',
  VERSION   => '0.05_00',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "MooseX::StrictConstructor" => '0',
    "YAML" => '0',
    "LWP::ConnCache::MaxKeepAliveRequests" => '0',
    "LWP::UserAgent::Determined" => '0',
    "JSON" => '0',
    "Moose" => '0.87',
  },
);
