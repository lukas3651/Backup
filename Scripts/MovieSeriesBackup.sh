#!/bin/bash
ls /mnt/user/Whole/Movies > "/mnt/user/Whole/Script Backup/Filme.txt"
ls /mnt/user/Whole/Serien > "/mnt/user/Whole/Script Backup/Serien.txt"
sed -i 's/[\/\\]//g' "/mnt/user/Whole/Script Backup/Filme.txt"
sed -i 's/[\/\\]//g' "/mnt/user/Whole/Script Backup/Serien.txt"
cd "/mnt/user/Whole/Script Backup"
git add "/mnt/user/Whole/Script Backup/Serien.txt"
git commit -m "Updated Series Folder"
git add "/mnt/user/Whole/Script Backup/Filme.txt"
git commit -m "Updated Movies Folder"
git push origin master