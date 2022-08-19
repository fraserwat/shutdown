build:
	chmod 777 bedtime.sh
	chmod 777 setup/*

	echo "\n$(USER) ALL=(ALL) /sbin/shutdown" | sudo EDITOR='tee -a' visudo
	setup/scheduler.sh
