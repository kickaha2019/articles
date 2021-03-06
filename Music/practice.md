@title		Daily keyboard practise
@PHP
<?php
$keys = array("A flat",  "A", "B flat", "B", "C",
"C sharp", "D", "E flat", "E", "F",
"F sharp", "G");

$thirds_majormin = array( "major", "minor");

$left_or_right = array( "Left", "Right");

$tonality = array( "major staccato", "harmonic minor staccato", "melodic minor staccato",
"major",          "harmonic minor",          "melodic minor");

$modality = array( "major", "harmonic minor", "melodic minor",
"major", "harmonic minor", "melodic minor");

$majormin = array( "major", "harmonic minor", "major", "harmonic minor");

$contrary_third_keys = array( "C", "C minor", "G", "G minor", "D", "D minor");

$contrary_chromatic = array( "A flat", "A sharp C sharp", "C", "C", "D", "F#", "F#", "G", "E", "A");

$inversion = array( "", "first inversion", "second inversion", "", "first inversion", "second inversion");

$dim7 = array( "A", "B", "C", "C sharp");

$dom7 = array( "C", "G", "D", "C", "G", "D");

$staccato = array( "", "staccato ", "", "staccato ", "", "staccato ");

$sight_reading = array( "", "Sight reading", "", "", "Sight reading", "");

$hands = array( "Left hand", "Right hand", "Hands together", "Hands together");

$day = intval(time() / (24 * 60 * 60));

function choose( $data, $offset)
{
global $day;
if ($offset > count($data)) {die( "Offset bad");}
$index = (((($day % count($data)) + 1) * $offset) % (count($data) + 1)) - 1;
return $data[$index];
}

function line( $text) {
if ($text != '') {
echo( '<TR><TD>' . $text . '</TD></TR>');
}
}

echo( '<CENTER><TABLE BORDER="1"><TR><TH>What to practise today</TH></TR>');

line( "Similar motion " . choose( $staccato, 1) . "major scale starting on " . choose( $keys, 8));

line( "Similar motion " . choose( $staccato, 2) . "melodic minor scale starting on " . choose( $keys, 3));

line( "Similar motion " . choose( $staccato, 3) . "harmonic minor scale starting on " . choose( $keys, 7));

line( choose( $left_or_right, 1) . " hand " . choose( $tonality, 5) . " scale starting on " . choose( $keys, 5) );

line( "Similar motion " . choose( $staccato, 1) . "scale a third apart for " . choose($keys, 7) . " " . choose( $thirds_majormin, 1));

line( "Scale a sixth apart for " . choose($keys, 8) . " " . choose( $thirds_majormin, 2));

line( "Legato scale in thirds hands separately in C");

line( "Staccato scale in sixths hands separately in C");

line( "Contrary motion " . choose( $staccato, 4) . choose( $keys, 7) . " " . choose( $majormin, 1) . " scale");

line( "Contrary motion " . choose( $contrary_third_keys, 1) . " scale third apart");

line( "Contrary motion " . choose( $contrary_third_keys, 2) . " scale sixth apart");

line( choose( $hands, 4) . " similar motion " . choose( $staccato, 5) . "chromatic scale starting on " . choose( $keys, 10));

line( "Similar motion chromatic scale in thirds starting on " . choose( $keys, 8));

line( "Contrary motion chromatic scale starting on " . choose($contrary_chromatic, 1));

line( choose( $hands, 1) . " " . choose( $keys, 11) . " major arpeggio " . choose( $inversion, 1));

line( choose( $hands, 2) . " " . choose( $keys, 1) . " harmonic minor arpeggio " . choose( $inversion, 3));

line( choose( $hands, 3) . " diminished seventh starting on " . choose( $dim7, 2) . " 4 octaves");

line( choose( $hands, 4) . " dominant seventh in the key of " . choose( $keys, 2) . " 4 octaves");

line( "Staccato scale a third apart for B minor");

line( "Arpeggio in F sharp major");

line( choose( $sight_reading, 1));

echo( '</TABLE></CENTER>');
?>
