#!/bin/bash

# Updates the spreadsheet with the latest information and pushes backups and spreadsheet to github
# The spreadsheet is going to go in both the data backup repository and the main repository

python3 parser.py

# Force pull repository
git fetch
git pull
git add copied_logs/*
git commit -m "Backups" copied_logs/*
git add Parsed_Spreadsheets/STATS_LATEST.csv
git commit -m "Updated Spreadsheet" Parsed_Spreadsheets/STATS_LATEST.csv
git push

#cd ../HACS200-Research/Parsing
#git fetch
#git pull
#cp /home/students/HACS200-Research-Data-Backup/Parsed_Spreadsheets/STATS_LATEST.csv ./
#git add STATS_LATEST.csv
#git commit -m "Updated Spreadsheet" STATS_LATEST.csv
#git push
