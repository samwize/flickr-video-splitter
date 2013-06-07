# The video filename to split
filename=$1

# Probe for video length
d=$(./ffprobe -loglevel error -show_format -show_streams "$filename" | grep duration= -m 1 | cut -f2 -d"=" | cut -f1 -d".")
echo "Video duration: $d sec"

# Each chunk duration in sec. Flickr only can have 90 seconds..
chunk_duration=${2:?90};
echo "Chunk duration: $chunk_duration sec"

# This will get the number of chunks
# A ceiling trick involved. For 90sec chunk, it basically add 89, then divide by 90.
chunks=$((($d+chunk_duration-1)/$chunk_duration))
echo "Number of chunks: $chunks"

# For each chunk
# Below for loop will not work..
# for i in {1..$chunks}
for (( c=1; c<=$chunks; c++ ))
	do ./ffmpeg -i "$filename" -ss $[ ($c-1)*$chunk_duration ] -t $chunk_duration -vcodec copy -acodec copy -strict -2 "${filename%.*}_$c.${filename##*.}"
done