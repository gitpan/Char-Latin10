# This file is encoded in Latin-10.
die "This file is not encoded in Latin-10.\n" if q{あ} ne "\x82\xa0";

use Char::Latin10;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あ]う' =~ /(あ[^]い]う)/) {
    print "not ok - 1 $^X $__FILE__ not ('あ]う' =~ /あ[^]い]う/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('あ]う' =~ /あ[^]い]う/).\n";
}

__END__
