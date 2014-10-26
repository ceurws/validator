include Makefile.vars

clean-deploy:
	rm -fv share/error-report/*/*~

deploy: clean-deploy
	rsync -avz --delete share/error-report $(SSH):share ; \
	rsync -avz bin/error-report $(SSH):bin

.PHONY: clean-deploy deploy
