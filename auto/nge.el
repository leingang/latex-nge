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
     "latexclass"
     "docstrip"
     "nged"
     "filedescription")
    (TeX-run-style-hooks
     "ngemin10"
     "ngemin"
     "art10"
     "article"
     "todonotes"
     "dvistyle"
     "url"
     "fancyvrb"
     "showkeys"
     "latex2e"
     "ltxdoc10"
     "ltxdoc"
     "docstrip")))

