current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "\n\n*******************\nCapturing image at time $current_time"
mkdir -p images
yes | ffmpeg -f video4linux2 -s 1920x1080 -i /dev/video0 -ss 0:0:1 -frames 1 images/$current_time.jpg
exit 0
