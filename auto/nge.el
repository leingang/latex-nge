(TeX-add-style-hook "nge"
 (lambda ()
    (LaTeX-add-environments
     "NGE"
     "problem"
     "solution")
    (TeX-add-symbols
     '("fixme" ["argument"] 0)
     '("NGEerror" 1)
     '("NGEDefineError" 3)
     '("DeclareNGEBooleanOption" 2)
     '("ngefile" 1)
     '("latexfile" 1)
     '("latexpackage" 1)
     '("ctanpackage" 1)
     '("texcatalogueentry" 1)
     "ngedsvnroot"
     "latexclass"
     "docstrip"
     "nged"
     "filedescription"
     "ps"
     "NGE"
     "NGEcourse"
     "noauthor"
     "tableofproblems"
     "footnotesize"
     "footnoterule"
     "thanks"
     "maketitle"
     "title"
     "author"
     "date"
     "and")
    (TeX-run-style-hooks
     "amsthm"
     "amsmath"
     "pgfkeys"
     "ngetest10"
     "ngetest"
     "ngeproblem"
     "ifoption"
     "fancyhdr"
     "art10"
     "article"
     "ifthen"
     "svninfo"
     "todonotes"
     "dvistyle"
     "url"
     "fancyvrb"
     "showkeys"
     "latex2e"
     "ltxdoc10"
     "ltxdoc"
     "docstrip")))

