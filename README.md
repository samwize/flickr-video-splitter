Flickr Video Splitter
=====================

This bash script splits videos into 90 seconds chunk, so that you can upload to flickr.


Why have this?
==============

I am a flickr PRO user who pays $24.90/year and enjoy UNLIMITED storage. 

(As of May 2013, Flickr no longer offers PRO plan, so no longer has unlimited storage for new users.)

One restriction they have over videos is that they have to be less than 90 seconds. 

To circumvent the restrictions, I wrote this script which uses ffmpeg to split the videos into 90 seconds chunks.



How to use?
===========

Download the repository.

	git clone https://github.com/samwize/flickr-video-splitter.git

To split a video eg. ``/path/to/awesome-video.mp4`, do this

	./split.sh /path/to/awesome-video.mp4

You will find the splitted videos such as `/path/to/awesome-video_1.mp4`, `/path/to/awesome-video_2.mp4`, etc




Other Notes..
=============

The repository includes a copy of `ffmpeg` and `ffprobe`. The latest version can be downloaded from here: [ffmpeg](http://www.evermeet.cx/ffmpeg) and [ffprobe](http://www.evermeet.cx/ffprobe/ffprobe-1.2.1.7z)

You can also cha