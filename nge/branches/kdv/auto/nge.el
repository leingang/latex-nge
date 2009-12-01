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
     "filedescription"
     "course"
     "coursename"
     "shortcoursename"
     "courseid"
     "testname")
    (TeX-run-style-hooks
     "pgfkeys"
     "ngemin10"
     "ngemin"
     "ngeproblem"
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

