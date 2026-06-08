# learn_sheet_music flutter project

This is an ongoing experiment with various packages to learn sheet music. 

## Tone generation

Flutter has a number of packages which are very good at either loading a couple of sound samples and playing them in quick succession, or audio packages suitable for playing music tracks in sequence. However, for a learn piano sheet music app, to learn the notes from C2 up to C6, to cover the bass and trable clef, that is 49 notes loaded, which we want to play at any time with very little latency, the cross-platform support for that is hit-and-miss.

### Third party packages for playing audio

* audioplayers
* soundpool

This both work reasonably well on specific platforms. Soundpool is rarely updated, but performs sufficiently well on the Web/chrome platform.

some combinations of these is probbably good enough for normal output, however they start to struggle when playing complciated midi files.


### other packages

* https://pub.dev/packages/dart_melty_soundfont/versions

this one looks good for performance, as its generating the tones, however, it's not supported on the web, and is not updated.

* flutter_pcm_sound
 
lookd to have a good implementation of reading sf2 files, which is probably better than loading a load of mp3 or wave files in buffers as I am doing at the moment.

