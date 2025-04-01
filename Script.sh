#!/bin/bash

# Check if directory path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

dir=$1
log_file="file_organizer.log"

# Define file categories
declare -A categories
categories=(
    [Images]="jpg jpeg png gif bmp"
    [Documents]="pdf doc docx txt odt"
    [Videos]="mp4 mkv avi mov"
    [Music]="mp3 wav flac"
    [Archives]="zip rar tar.gz 7z"
)

# Create folders if not present
for folder in "${!categories[@]}"; do
    mkdir -p "$dir/$folder"
    echo "Created folder: $dir/$folder" >> "$log_file"
done

# Move files to appropriate folders
for folder in "${!categories[@]}"; do
    for ext in ${categories[$folder]}; do
        files=$(find "$dir" -maxdepth 1 -type f -iname "*.$ext")
        for file in $files; do
            mv "$file" "$dir/$folder/"
            echo "Moved: $file → $dir/$folder/" >> "$log_file"
        done
    done
done

echo "File organization completed. Check log: $log_file"
