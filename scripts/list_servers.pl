#!perl
use strict;
use warnings;
use Net::RackSpace::CloudServers;

my $user = $ENV{'CLOUDSERVERS_USER'} or die "Need CLOUDSERVERS_USER environment variable set";
my $key  = $ENV{'CLOUDSERVERS_KEY'}  or die "Need CLOUDSERVERS_KEY environment variable set";

$Net::RackSpace::CloudServers::DEBUG = 1;
my $CS = Net::RackSpace::CloudServers->new(
  user => $user,
  key  => $key,
);

$CS->get_server();
$CS->get_server(1);
$CS->get_server_detail();
