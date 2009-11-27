(TeX-add-style-hook "nge"
 (lambda ()
    (TeX-add-symbols
     '("fixme" ["argument"] 0)
     '("ngefile" 1)
     '("latexfile" 1)
     '("latexpackage" 1)
     '("ctanpackage" 1)
     '("texcatalogueentry" 1)
     "ngedsvnroot"
     "texlive"
     "latexclass"
     "docstrip"
     "nged"
     "ngedtx"
     "ngeins")
    (TeX-run-style-hooks
     "ngemin10"
     "ngemin"
     "art10"
     "article"
     "todonotes"
     "dvistyle"
     "url"
     "hyperref"
     "fancyvrb"
     "showkeys"
     "latex2e"
     "ltxdoc10"
     "ltxdoc"
     "docstrip")))

