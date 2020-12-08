current_date=$(date "+%Y.%m.%d")
echo "Saving to video and archives images for date $current_date"
mkdir -p videos
yes | ffmpeg -r 12 -pattern_type glob -i 'images/*.jpg' -c:v libx264 videos/$current_date.mp4
mkdir -p image_archives
tar -czf image_archives/$current_date.tar.gz images/*.jpg
mkdir -p images_bak
mv images/*.jpg images_bak
exit 0
