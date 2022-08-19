build:
	chmod +x sleep.sh
	chmod +x setup/*

	echo "\n$(USER) ALL=(ALL) /sbin/shutdown" | sudo EDITOR='tee -a' visudo
	setup/scheduler.sh
