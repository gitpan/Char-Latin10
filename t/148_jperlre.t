# This file is encoded in Latin-10.
die "This file is not encoded in Latin-10.\n" if q{あ} ne "\x82\xa0";

use Char::Latin10;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あ-' =~ /(あ[い-])/) {
    if ("$1" eq "あ-") {
        print "ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あ-' =~ /あ[い-]/).\n";
}

__END__
