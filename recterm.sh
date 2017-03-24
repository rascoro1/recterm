#!/bin/bash
ASCII_FNAME=term_session
GIF_FNAME=term_session.gif
MP4_FNAME=term_session.mp4
WAV_FNAME=term_session.wav
FINAL_FNAME=full_term_session.mp4

# Start audio recording and place in background and then start terminal recording
sox -q -d $WAV_FNAME & asciinema rec $ASCII_FNAME
# Kill the sox program
ps -ef | grep sox | awk '{print $2}' | head -n 1 | xargs kill -15
# Upload the gif to online
url=$(asciinema upload $ASCII_FNAME)
echo "URL: $url"
# Extract the ID from the URL
id=$(echo $url | awk -F '/' '{print $5}')
echo "ID: $id"
# Turn the ASCIINEMA file into a gif
res=`./asciinema2gif --output $GIF_FNAME $id`
echo "$res"
# Turn that gif into an mp4 file
ffmpeg -f gif -i $GIF_FNAME -vcodec libx264 -pix_fmt yuv420p $MP4_FNAME
# Combine audio into the MP4
ffmpeg -i $MP4_FNAME -i $WAV_FNAME -c:v copy -c:a aac -strict experimental $FINAL_FNAME

echo "Your MP4 file with audio is ready: $FINAL_NAME"
