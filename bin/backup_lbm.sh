LOG_FILE_FORMAT=$(date +%Y.%m.uoa.txt)
LOG_PATH="/IRONMAN/logs/$LOG_FILE_FORMAT"
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  START >> "$LOG_PATH"
#rclone -v sync /IRONMAN/Documents/Topics uoa:/Topics
rclone -v sync /IRONMAN/Datasets.bak     lbm:/Datasets.bak
#rclone -v sync /IRONMAN1/Backups         uoa:/Database.Backups
echo $(date +%Y/%m/%d_%a_%H:%M:%S)  END >> "$LOG_PATH"
