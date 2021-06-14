if [ -d "/DATA30/Documents" ]
then
	echo "****" Start backup at $(date) >> /DATA/logs/backup_papers.txt
	rm /DATA/logs/backup_papers_last_outcome.txt
	rsync -razvh --checksum --progress --update --delete /DATA/Documents/Papers /DATA30/Documents/. >> /DATA/logs/backup_papers_last_outcome.txt
	echo "****" Stop  backup at $(date) >> /DATA/logs/backup_papers.txt
else
	echo "####" Cannot find /DATA30 at $(date) >> /DATA/logs/backup_papers.txt
fi
