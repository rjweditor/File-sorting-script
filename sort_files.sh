#!/bin/bash

# Prompt user for directory location
echo "Enter the directory location: "
read directory

if [ ! -d "$directory" ]; then
  echo "Directory does not exist."
  exit 1
fi

jpg_dir="$directory/JPG"
raf_dir="$directory/RAF"

# Create JPG and RAF directories if they don't exist
mkdir -p "$jpg_dir"
mkdir -p "$raf_dir"

# Move .JPG files to JPG directory and .RAF files to RAF directory
for file in "$directory"/*; do
  if [ -f "$file" ]; then
    if [[ "$file" == *.JPG ]]; then
      mv "$file" "$jpg_dir"
    elif [[ "$file" == *.RAF ]]; then
      mv "$file" "$raf_dir"
    fi
  fi
done

echo "Files sorted successfully!"
