#!/bin/bash

for i in *.wav;do
    echo "Converting $i"
    ffmpeg -i "$i" -codec:a libmp3lame -qscale:a 2 "$i.mp3"

done


