michel:
	pinacotron download DOWNLOAD_PURGE=1 && pinacotron annotate ANNOTATE_FORMATS=png
	find var/annotate -iname '*%*' -delete
	bash -x setup.command
