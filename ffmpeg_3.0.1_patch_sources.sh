#!/bin/bash

# download ffmpeg sources https://ffmpeg.org/releases/ffmpeg-3.0.1.tar.bz2
curl -sLO https://ffmpeg.org/releases/ffmpeg-3.0.1.tar.bz2 && \
echo "Downloaded ffmpeg source, SHA256 is: " && \
shasum -a 256 ffmpeg-3.0.1.tar.bz2 && \
mkdir ffmpeg && \
tar -C ./ffmpeg -jx --strip-components=1 -f ffmpeg-3.0.1.tar.bz2

grep -lr --null "x264_bit_depth" ./ffmpeg | xargs -0 sed -e 's|x264_bit_depth|X264_BIT_DEPTH|g' -i "" 

rm ffmpeg-3.0.1.tar.bz2
tar -jcvf ffmpeg-3.0.1.tar.bz2 ./ffmpeg

rm -rf ./ffmpeg

echo "ffmpeg-3.0.1.tar.bz2 created with SHA256: "
shasum -a 256 ffmpeg-3.0.1.tar.bz2
