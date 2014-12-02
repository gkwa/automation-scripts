include chocolatey_sw

/*


HandBrake
0.9.9

This package was submitted prior to moderation and has not been approved. While it is likely safe for you, there is more risk involved.

HandBrake is a tool for converting video from nearly any format to a selection of modern, widely supported codecs.
*/



package { 'handbrake':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

AIMP (Artem Izmaylov Media Player) is a full-featured free music player designed with sound quality and wide, 
customizable functionality in mind. Over twenty audio formats are supported. 
This is one of the best music players you can find on the Internet. 
Audio is processed in 32-bit for crystal-clear sound. 
The player features a 18-band graphics equalizer with extra built-in sound effects. 
You can extend the existing functionality adding Input, DSP and Gen plug-ins from Winamp. 
All local and global hotkeys are customizable. Full Unicode support. 
You can convert AudioCD to MP3, OGG, WAV or WMA. 
Similarly, you can grab sound from any audio device on your PC to MP3, OGG, WAV or WMA formats.

*/


package { 'aimp':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

VLC is a free and open source cross-platform multimedia player and
framework that plays most multimedia files as well as DVD, Audio CD,
VCD, and various streaming protocols.

*/


package { 'vlc':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'IrfanView':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'fsviewer':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

All-in-One Free Video Converter

There is open source software to perform almost every task for video conversion. But if you are one of these windows users who are looking for an All-in-One video converting tool with easy-to-use graphical interface, Any Video Converter Freeware provides just that, allowing you to effortlessly convert video files for FREE!

Free Video to Video Converter

Whether you are looking for free AVI video converter, free mxf converter, free MKV video converter, free FLV video converter, free MP4 converter, free iPad converter, free Android converter, or free YouTube converter, Any Video Converter Freeware is the right application for you. Download the free video converter now to convert videos and experience better digital life.

Excellent HTML5 Video Converter

HTML5 is the fastest growing web development trend and HTML5 video as a part of HTML5 becomes the new natural way to show video online. Free Any Video Converter can easily encode and create the HTML5 video online for watching videos on all browsers or sharing videos. With this HTML5 Video Converter, you can perfectly convert videos to HTML5 videos with embedding code and HTML page for modern browsers like IE9, Firefox, Chrome, Safari, Opera and more. Learn more details from how to convert video to WebM, OGG and MP4.

Free Video to Audio Converter

Any Video Converter Freeware is also a free video to audio converter that can extract audio from video, like convert MP4 to MP3, convert MPEG to M4A, convert AVI to MP3, convert WMV to WMA, convert MOV to AAC, convert WebM(V8) video to MP3, and VOB to MP3.

Free YouTube Video Downloader

This free YouTube Downloader lets you download videos from YouTube and save them as MP3, MP4, WMV, MPEG, MKV, WebM, ASF, M2TS, DVD and other formats.


*/


package { 'anyvideoconverter':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

