################################################################
## Synchronize web site on the server


################################################################
## Variables
MAKEFILE=makefile
MAKE=make -s -f ${MAKEFILE}

################################################################
## List of targets
usage:
	@echo "usage: make [-OPT='options'] target"
	@echo "implemented targets"
	@perl -ne 'if (/^([a-z]\S+):/){ print "\t$$1\n";  }' ${MAKEFILE}

################################################################
## Clean temporary files created by emacs
clean:
	find . -name '*~' -exec rm {} \;
	find . -name '.#*' -exec rm {} \;
	find . -name '.DS_Store' -exec rm {} \;


################################################################
## Publish on the web site
TO_SYNC=*
publish: clean
	git push

################################################################
## Browse the Web site
#BROWSER=firefox
LOCAL=index.html
local:
	open  ${LOCAL}

#WEB_URL=http://pedagogix-tagc.univ-mrs.fr/courses/SBBCU16L_cisreg
WEB_URL=http://rsa-tools.github.io/RSAT_20y
web:
	open  ${WEB_URL}

