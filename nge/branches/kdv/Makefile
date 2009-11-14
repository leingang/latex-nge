TEXINPUTS = ./texmf//:
LATEX = latex

name = nge
sources = $(name).dtx $(name).ins
targets = $(name).cls

.phony: all doc dvi pdf ps
all: $(targets)
doc:
dvi: $(name).dvi
pdf:
ps:

$(targets): $(sources)
	$(LATEX) $(name).ins

$(name).dvi:
	$(LATEX) $(name).dtx
	makeindex $(name)
	makeindex -s gglo.ist -o $(name).gls $(name).glo
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
svnroot = https://subversive.cims.nyu.edu/mathclinical/$(name)
svnbranch = /branches/kdv
svnpath = $(svnroot)$(svnbranch)

.phony: checkout
checkout:

maintainer-clean:
	@echo 'This command is intended for maintainers to use;'
	@echo 'it deletes files that may need special tools to rebuild.'
