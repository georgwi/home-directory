#!/bin/sh
# Usage:
# ./script.sh input.mp4 output.gif

# Set to the time in the video you want to start at
start_time=00:00:00
# Set the length of the gif you would like to extract from the video (set to large if you would like the whole video)
duration=200.0
# Temp file for color palette.
palette="/tmp/palette.png"
# Change FPS and resolution here:
filters="fps=20,scale=600:-1:flags=lanczos"

ffmpeg -v warning -ss $start_time -t $duration -i $1 -vf "$filters,palettegen" -y $palette
ffmpeg -v warning -ss $start_time -t $duration -i $1 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y $2
