all: download annotate index

download:
	pinacotron download DOWNLOAD_PURGE=1 && pinacotron annotate ANNOTATE_FORMATS=png

cleanup:
	find var/download -iname '*%*' -delete

annotate: cleanup
	pinacotron annotate ANNOTATE_RUNID=letters ANNOTATE_WORDS=letters.txt ANNOTATE_PROFILE=letters ANNOTATE_FORMATS=png

index:
	bash -x setup.command
