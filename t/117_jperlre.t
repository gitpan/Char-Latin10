# This file is encoded in Latin-10.
die "This file is not encoded in Latin-10.\n" if q{��} ne "\x82\xa0";

use Char::Latin10;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('����q' =~ /(����+����)/) {
    print "not ok - 1 $^X $__FILE__ not ('����q' =~ /����+����/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('����q' =~ /����+����/).\n";
}

__END__