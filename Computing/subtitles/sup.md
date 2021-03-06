@title		PGS subtitle format
@markdown
A format used to hold bitmapped subtitles for films on Blu-Ray disks.
After ripping
a Blu-Ray film to disk using something like [makemkv](http://makemkv.com/), the subtitle track can be
extracted to the Sup format using [mkvtoolnix](https://mkvtoolnix.download/).

The format is described [here](http://forum.doom9.org/archive/index.php/t-172931.html),
and also [here](https://github.com/peterdk/SupRip/blob/master/Bluray%20Sup.txt).

It'll be nice to be able to convert Japanese subtitles in SUP format to be
English subtitles in SRT format.  A possible approach is to first convert the
SUP Japanese subtitles to be a set of PNG files for the subtitles, and a SRT file
which has the filenames instead of the text. An experimental Java program to do
this - SupExtract.

Next step is to use OCR (optical character recognition) on those PNG images
to convert them to Japanese text.
[Nuance Omnipage Ultimate](http://www.nuance.co.uk/for-business/by-product/omnipage/ultimate/index.htm)
worked surprisingly well when I tried it on some sample files. But is a
commercial product.

So far so good. Let's say we now have a SRT file with names of .PNG files for the
text, and a set of parallel named .TXT files containing the scanned OCR text.
We can run each OCR text through [Google Translate](https://translate.google.co.uk)
using a script like srt_merge_txt.rb srt_merge_txt.rb. The hiccup is while Google Translate is
free, and it does an amazing job, the subtitles are for something like Japanese
rather chaotic.
