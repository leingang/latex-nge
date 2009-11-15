SHELL = /bin/sh
TEXINPUTS = ./texmf//:
TEX = tex
LATEX = latex
MAKEINDEX = makeindex

name = nge
sources = $(name).dtx $(name).ins
targets = $(name).cls

.phony: all doc dvi pdf ps
all: $(targets)
doc: pdf
dvi: $(name).dvi
pdf:
ps:

$(targets): $(sources)
	$(TEX) $(name).ins

$(name).dvi:
	$(LATEX) $(name).dtx
	$(MAKEINDEX) $(name)
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
EDITOR = "emacs -nw"

.phony: checkout
checkout:
	svn checkout $(svn_url) $(checkoutdir)
	@echo 'sources from' $(svn_url)
	@echo 'are placed in' $(checkoutdir)

maintainer-clean:
	@echo 'This command is intended for maintainers to use;'
	@echo 'it deletes files that may need special tools to rebuild.'
