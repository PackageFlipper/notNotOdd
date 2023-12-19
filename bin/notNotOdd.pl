use strict;
use warnings;

my $num;
my $lastDig;

# Need my digit sets
# perl doesn't support sets so have to make them manually
my %odd = (
    1 => 1,
    3 => 1, 
    5 => 1, 
    7 => 1, 
    9 => 1,
);

if(@ARGV == 0) {
  print STDERR "ERROR: No input provided\n";
  exit 1;
}
$num = $ARGV[0];

#some debug if anyone needs it in the future
#print "Number " . $num . "\n";

if ($num =~ /(\d)[^\d]*$/) {
    $lastDig = int($1);
}

if(exists $odd{$lastDig}){
    print "True\n";
    exit 0;
}
print "False\n";
1;

