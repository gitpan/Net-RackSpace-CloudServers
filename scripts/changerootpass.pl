#!perl
use strict;
use warnings;
use Net::RackSpace::CloudServers;

my $user = $ENV{'CLOUDSERVERS_USER'}
  or die "Need CLOUDSERVERS_USER environment variable set";
my $key = $ENV{'CLOUDSERVERS_KEY'}
  or die "Need CLOUDSERVERS_KEY environment variable set";

$Net::RackSpace::CloudServers::DEBUG = 1;
my $CS = Net::RackSpace::CloudServers->new(
    user => $user,
    key  => $key,
);

my @flavors = $CS->get_flavor_detail;
my @images  = $CS->get_image_detail;
my @servers = $CS->get_server_detail;

my $srvapi = ( grep { $_->name eq 'apitest' } @servers )[0];
die "can't find server named 'apitest'. Create one." if ( !defined $srvapi );

print "changing root password..\n";
$srvapi->change_root_password('toor');
print "Changed. Login to ", $srvapi->public_address->[0], "\n";
