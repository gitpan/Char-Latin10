# This file is encoded in Latin-10.
die "This file is not encoded in Latin-10.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::Latin10;

my $__FILE__ = __FILE__;

my %uc = ();
@uc{qw(a b c d e f g h i j k l m n o p q r s t u v w x y z)} =
    qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);
%uc = (%uc,
    "\xA2" => "\xA1", # LATIN LETTER A WITH OGONEK
    "\xA8" => "\xA6", # LATIN LETTER S WITH CARON
    "\xAE" => "\xAC", # LATIN LETTER Z WITH ACUTE
    "\xB3" => "\xA3", # LATIN LETTER L WITH STROKE
    "\xB8" => "\xB4", # LATIN LETTER Z WITH CARON
    "\xB9" => "\xB2", # LATIN LETTER C WITH CARON
    "\xBA" => "\xAA", # LATIN LETTER S WITH COMMA BELOW
    "\xBD" => "\xBC", # LATIN LIGATURE OE
    "\xBF" => "\xAF", # LATIN LETTER Z WITH DOT ABOVE
    "\xE0" => "\xC0", # LATIN LETTER A WITH GRAVE
    "\xE1" => "\xC1", # LATIN LETTER A WITH ACUTE
    "\xE2" => "\xC2", # LATIN LETTER A WITH CIRCUMFLEX
    "\xE3" => "\xC3", # LATIN LETTER A WITH BREVE
    "\xE4" => "\xC4", # LATIN LETTER A WITH DIAERESIS
    "\xE5" => "\xC5", # LATIN LETTER C WITH ACUTE
    "\xE6" => "\xC6", # LATIN LETTER AE
    "\xE7" => "\xC7", # LATIN LETTER C WITH CEDILLA
    "\xE8" => "\xC8", # LATIN LETTER E WITH GRAVE
    "\xE9" => "\xC9", # LATIN LETTER E WITH ACUTE
    "\xEA" => "\xCA", # LATIN LETTER E WITH CIRCUMFLEX
    "\xEB" => "\xCB", # LATIN LETTER E WITH DIAERESIS
    "\xEC" => "\xCC", # LATIN LETTER I WITH GRAVE
    "\xED" => "\xCD", # LATIN LETTER I WITH ACUTE
    "\xEE" => "\xCE", # LATIN LETTER I WITH CIRCUMFLEX
    "\xEF" => "\xCF", # LATIN LETTER I WITH DIAERESIS
    "\xF0" => "\xD0", # LATIN LETTER D WITH STROKE
    "\xF1" => "\xD1", # LATIN LETTER N WITH ACUTE
    "\xF2" => "\xD2", # LATIN LETTER O WITH GRAVE
    "\xF3" => "\xD3", # LATIN LETTER O WITH ACUTE
    "\xF4" => "\xD4", # LATIN LETTER O WITH CIRCUMFLEX
    "\xF5" => "\xD5", # LATIN LETTER O WITH DOUBLE ACUTE
    "\xF6" => "\xD6", # LATIN LETTER O WITH DIAERESIS
    "\xF7" => "\xD7", # LATIN LETTER S WITH ACUTE
    "\xF8" => "\xD8", # LATIN LETTER U WITH DOUBLE ACUTE
    "\xF9" => "\xD9", # LATIN LETTER U WITH GRAVE
    "\xFA" => "\xDA", # LATIN LETTER U WITH ACUTE
    "\xFB" => "\xDB", # LATIN LETTER U WITH CIRCUMFLEX
    "\xFC" => "\xDC", # LATIN LETTER U WITH DIAERESIS
    "\xFD" => "\xDD", # LATIN LETTER E WITH OGONEK
    "\xFE" => "\xDE", # LATIN LETTER T WITH COMMA BELOW
    "\xFF" => "\xBE", # LATIN LETTER Y WITH DIAERESIS
);

printf("1..%d\n", scalar(keys %uc));

my $tno = 1;
for my $char (sort keys %uc){
    if (uc($char) eq $uc{$char}) {
        printf(qq{ok - $tno uc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($uc{$char}));
    }
    else {
        printf(qq{not ok - $tno uc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($uc{$char}));
    }
    $tno++;
}

__END__