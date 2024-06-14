#!/bin/bash
# Video Download from any video streaming services using with yt-dlp
# You modify each parameter
UserID='yourID' # Your ID if needed
UserPW='yourPW' # Your password if needed
FileOfTitlesURLs="/home/YourDir/URLsToDownload.txt" # Specify a text file path being written URLs row by row

# *** You don't need modify below ***
for i in $(cat $FileOfTitlesURLs); do
    yt-dlp -u "$UserID" -p "$UserPW" "$i"
done
