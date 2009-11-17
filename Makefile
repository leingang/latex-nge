# Makefile for LaTeX package NGEd
# $Id$
#
# Copyright (C) 2009 Denis Kosygin <kosygin@courant.nyu.edu>
#
SHELL = /bin/sh
TEXINPUTS = ./texmf//:
TEX = tex
LATEX = latex
MAKEINDEX = makeindex

name = nge
sources = $(name).dtx
targets = $(name).ins readme.txt install.txt license.txt

.phony: all doc dvi pdf ps
all:
	$(LATEX) $(name).dtx
	$(MAKEINDEX) -s gind.ist $(name)
	$(MAKEINDEX) -s gglo.ist -o $(name).gls $(name).glo
	$(LATEX) $(name).dtx
	$(LATEX) $(name).dtx

.phony: clean texclean cleanall
clean: texclean
	-$(RM) *~
texclean:
	-$(RM) *.log *.aux *.dvi *.toc texput.*
	-$(RM) *.ind *.idx *.ilg *.glo *.gls
cleanall: clean
	-$(RM) $(targets) $(name).pdf $(name).ps

### Maintainers' and developers' section
svnroot = https://subversive.cims.nyu.edu/mathclinical
svnbranch = kdv
svn_url = $(svnroot)/$(name)/branches/$(svnbranch)
checkoutdir = src
SVN_EDITOR = "emacs -nw"

.phony: checkout maintainer-clean
checkout:
	svn checkout $(svn_url) $(checkoutdir)
	@echo 'sources from' $(svn_url)
	@echo 'are placed in' $(checkoutdir)

maintainer-clean:
	@echo 'This command is intended for maintainers to use;'
	@echo 'it deletes files that may need special tools to rebuild.'
