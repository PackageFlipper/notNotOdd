use strict;
use warnings;

my $what;
my $this_is_the_thing_that_does_what_we_need_to_do_what_we_need;

# Need my digit sets
# perl doesn't support sets so have to make them manually
my %funny_numbers = (
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
$what = $ARGV[0];

#some debug if anyone needs it in the future
#print "Number " . $num . "\n";

if ($what =~ /(\d)[^\d]*$/) {
    $this_is_the_thing_that_does_what_we_need_to_do_what_we_need = int($1);
}

if(exists $funny_numbers{$this_is_the_thing_that_does_what_we_need_to_do_what_we_need}){
    print "True\n";
    exit 0;
}
print "False\n";
1;

