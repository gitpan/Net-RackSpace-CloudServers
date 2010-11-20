
use strict;
use warnings;

BEGIN { require 5.010_000; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Interface to RackSpace CloudServers via API',
  'AUTHOR' => 'Marco Fontani',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Net-RackSpace-CloudServers',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Net::RackSpace::CloudServers',
  'PREREQ_PM' => {
    'Any::Moose' => '0.10',
    'HTTP::Request' => '0',
    'JSON' => '0',
    'LWP::ConnCache::MaxKeepAliveRequests' => '0',
    'LWP::UserAgent::Determined' => '0',
    'YAML' => '0'
  },
  'VERSION' => '0.10',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



