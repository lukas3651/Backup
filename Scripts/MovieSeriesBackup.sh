#!/bin/bash
git config --global user.email "lukad99.lgh@gmail.com"
git config --global user.name "lukas3651"
git config --global --add safe.directory '/mnt/user/Whole/Script Backup'
ls /mnt/user/Whole/Movies > "/mnt/user/Whole/Script Backup/Filme.txt"
ls /mnt/user/Whole/Serien > "/mnt/user/Whole/Script Backup/Serien.txt"
ls /mnt/user/Whole/music > "/mnt/user/Whole/Script Backup/Music.txt"
tree /mnt/user/Whole/Audiobookshelf/Audiobooks/ -I '*.m4b|*.mp3|*.json|*.jpeg|*.jpg|*.ebup' > "/mnt/user/Whole/Script Backup/Audiobooks.txt"
sed -i 's/[\/\\]//g' "/mnt/user/Whole/Script Backup/Filme.txt"
sed -i 's/[\/\\]//g' "/mnt/user/Whole/Script Backup/Serien.txt"
sed -i 's/[\/\\"]//g; s/(\(.*\)//' "/mnt/user/Whole/Script Backup/Music.txt"
cd "/mnt/user/Whole/Script Backup"
git remote set-url origin https://github_token@github.com/lukas3651/Backup.git
git add "/mnt/user/Whole/Script Backup/Filme.txt"
git commit -m "Updated Movies Folder"
git add "/mnt/user/Whole/Script Backup/Serien.txt"
git commit -m "Updated Series Folder"
git add "/mnt/user/Whole/Script Backup/Music.txt"
git commit -m "Updated Music Folder"
git add "/mnt/user/Whole/Script Backup/Scripts"
git commit -m "Updated Scripts Folder"
git add "/mnt/user/Whole/Script Backup/Audiobooks.txt"
git commit -m "Updated Audiobooks Folder"
git push origin master
