OUTPUTDIR=compiled/\~siva/whizkey

SSH_USER=siva
SSH_HOST=linux3.ph.utexas.edu
SSH_TARGET_DIR=/u4/siva/public_html/whizkey/

compile: 
	ruhoh compile
#	cp compiled/rss.xml $(OUTPUTDIR)

upload: 
	scp -r $(OUTPUTDIR)/* $(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR)
	@echo "Done uploading."

#rsync -vhP compiled/\~siva/wizkey/*  siva@linux2.ph.utexas.edu:~/public_html/whizkey/

