# Makefile for LaTeX package NGEd
# $Id$
#
# Copyright (C) 2009 Denis Kosygin <kosygin@courant.nyu.edu>
#
SHELL = /bin/sh
export PATH = ./bin:$(HOME)/bin:/usr/local/bin:/usr/bin:/bin
TEX = tex
LATEX = latex
MAKEINDEX = makeindex

name = nge
sources = $(name).dtx
targets = $(name).ins readme.txt install.txt license.txt \
          ngemin.cls ngeexam.cls ngeprob.sty ngeinit.sty \
	  ngekeys.sty ngetest.cls ngeproblem.sty

.PHONY: all doc dvi pdf ps
all:
	$(LATEX) $(name).dtx
	$(MAKEINDEX) -s gind.ist $(name)
	$(MAKEINDEX) -s gglo.ist -o $(name).gls $(name).glo
	$(LATEX) $(name).dtx
	$(LATEX) $(name).dtx

.PHONY: clean texclean distclean
tex_suffixes = log aux dvi toc tdo ins drv def idx ilg ind glo gls
texclean:
	-$(RM) $(patsubst %, ${name}.%, ${tex_suffixes})
	-$(RM) driver* ext* ins*
	-$(RM) checksum.dtx stopeventually.dtx nge-1.dtx hide-example.dtx
	-$(RM) canary.txt
	-$(RM) $(targets)
	-$(RM) texput.* *.log
	-$(RM) test/*.aux test/*.dvi test/*.log

clean: texclean
	-$(RM) *~ style/*~ test/*~

distclean: texclean
	-$(RM) $(targets) $(name).pdf $(name).ps


### Maintainers' and developers' section
svnroot = https://subversive.cims.nyu.edu/mathclinical
svnbranch = kdv
svn_url = $(svnroot)/$(name)/branches/$(svnbranch)
checkoutdir = src
SVN = svn
export SVN_EDITOR = emacs -nw
SVN2CL = bin/svn2cl.sh
SVN2CL_OPTS = --authors .svn2cl_authors

.PHONY: checkout changelog nged
checkout:
	$(SVN) checkout $(svn_url) $(checkoutdir)
	@echo '\nsources from '$(svn_url)' \nare placed in '$(checkoutdir)

commit: cleanall svnignore
	$(SVN) commit

svnignore: 
	$(SVN) propset svn:ignore -F .svnignore .

changelog:
	if [ -f ChangeLog ]; \
        then cp ChangeLog ChangeLog.bak; \
	     $(SVN2CL) $(SVN2CL_OPTS) -o ChangeLog.tmp \
             -r HEAD:\{`head -1 ChangeLog | awk '{print $$1}'`\} \
             && cat ChangeLog.tmp ChangeLog.bak >ChangeLog; \
        else echo '\nWarning: ChangeLog not found.\nPerform svn update.'; fi

# Sources just before the beginning of the development.  Directory
# nged is listed in .svnignore, so that its contents is not
# overwritten accidentally during a `svn update'.
nged:
	[ -d nged ] || mkdir nged
	$(SVN) checkout -r 600 $(svnroot)/$(name)/branches/3.0-dev1 nged

.PHONY: maintainer-clean cleanall
maintainer-clean:
#	@echo 'This command is intended for maintainers to use;'
#	@echo 'it deletes files that may need special tools to rebuild.'
	-$(RM) ChangeLog.bak ChangeLog.tmp

cleanall: clean distclean maintainer-clean

.PHONY: test

