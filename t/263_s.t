# This file is encoded in Latin-10.
die "This file is not encoded in Latin-10.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::Latin10;
print "1..1\n";

my $__FILE__ = __FILE__;

$_ = 'C:/Perl/site/lib';
$_ =~ s#/#\\#g;

if ($_ eq 'C:\\Perl\\site\\lib') {
    print qq{ok - 1 \$_ =~ s#/#\\\\#g; $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \$_ =~ s#/#\\\\#g; $^X $__FILE__\n};
}

__END__
