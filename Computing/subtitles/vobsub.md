A format used to hold bitmapped subtitles for films on DVD disks. After ripping
a DVD film to disk using something like [makemkv](http://makemkv.com/), the subtitle track can be
extracted to the VobSub format (a .idx / .sub pair of files) using
[mkvtoolnix](https://mkvtoolnix.download/).

I haven't used this myself but there's a Rust library for the VobSub
format at [Rust VobSub](https://docs.rs/vobsub/0.2.3/vobsub/) with information
about the format. The binary .sub data is apparently a
[MPEG program stream](https://en.wikipedia.org/wiki/MPEG_program_stream)
wrapping a [Packetized Elementary Stream](http://dvd.sourceforge.net/dvdinfo/pes-hdr.html)
wrapping [run length encoded image data](http://sam.zoy.org/writings/dvd/subtitles/).

Also see
[Matro&scaron;ka](https://www.matroska.org/technical/specs/subtitles.html#images-subtitles).
