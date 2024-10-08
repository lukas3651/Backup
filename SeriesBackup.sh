#!/bin/bash

# Define paths
SOURCE_DIR="/mnt/user/Whole/Serien"
TARGET_DIR="/mnt/user/Scripts/Lists"
OUTPUT_FILE="$TARGET_DIR/Serien.txt"
REPO_PATH="/path/to/your/github/repository"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Step 1: Get directory names and save to Serien.txt
for dir in "$SOURCE_DIR"*/; do
  # Strip trailing slash and get only the directory name
  basename "$dir"
done > "$OUTPUT_FILE"

# Step 2: Remove unwanted characters from Serien.txt
sed -i 's/[\/\\?]//g' "$OUTPUT_FILE"

# Step 3: Move the cleaned file to the GitHub repository
cp "$OUTPUT_FILE" "$REPO_PATH"

# Step 4: Push the updated file to GitHub
cd "$REPO_PATH" || exit
git add Serien.txt
git commit -m "Updated Serien.txt with cleaned directory names"
git push origin main

#cd /mnt/user/Whole/Serien
#for dir in */; do
#  echo "$dir" > /mnt/user/Scripts/Lists/Serien.txt
#done
#sed -i 's/[\/\\]//g' /mnt/user/Scripts/Lists/Serien.txt
