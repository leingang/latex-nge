;;; nge.el --- support for locally defined commands in nge.dtx


 (TeX-add-style-hook
  "nge"
  (function (lambda ()
	      (setq TeX-auto-save t
	       TeX-parse-self t
	       LaTeX-command "TEXINPUTS=\".:texmf//:\" latex"
 		   reftex-enable-partial-scans t
  			    reftex-save-parse-info t
 			    reftex-use-multiple-selection-buffers t
  			    reftex-plug-into-AUCTeX t
  			    reftex-insert-label-flags '(nil "s"))
 	     (turn-on-reftex)
	     (TeX-add-symbols
	      '("nged" nil)
	      '("ngefile" t)
	      '("docstrip" nil)
	      '("latexfile" t)
	      '("latexpackage" t)
	      '("texcatalogueentry" t)
	      '("ctanpackage" t)
	      )
;; (TeX-add-style-hook
;;  "nge"
;;  (function (lambda () (TeX-add-symbols
;; 		       '("useenumi" "Abbreviation"))
;; 		      (setq TeX-auto-save t
;; 			    TeX-parse-self t
;; ;;;			    LaTeX-font-list (quote ((1 "" "" "\\mathcal{" "}") (2 "\\textbf{" "}" "\\mathbf{" "}") (3 "\\textsc{" "}") (5 "\\emph{" "}") (6 "\\textsf{" "}" "\\mathsf{" "}") (9 "\\textit{" "}" "\\mathit{" "}") (13 "\\textmd{" "}") (14 "\\textnormal{" "}" "\\mathnormal{" "}") (18 "\\textrm{" "}" "\\mathrm{" "}") (19 "\\textsl{" "}") (20 "\\texttt{" "}" "\\mathtt{" "}") (21 "\\textup{" "}") (4 "" "" t) (11 "" "" "\\mathfrak{" "}")))
;; 			    reftex-enable-partial-scans t
;; 			    reftex-save-parse-info t
;; 			    reftex-use-multiple-selection-buffers t
;; 			    reftex-plug-into-AUCTeX t
;; 			    reftex-insert-label-flags '(nil "s"))
;; 		      (turn-on-reftex)
;; 		      (LaTeX-add-environments '("proposition" LaTeX-env-label)
;; 					      '("corollary" LaTeX-env-label)
;; 					      '("lemma" LaTeX-env-label)
;; 					      '("theorem" LaTeX-env-label)
;; 					      '("statement" LaTeX-env-label)
;; 					      '("conjecture" LaTeX-env-label)
;; 					      '("definition" LaTeX-env-label)
;; 					      '("examples" LaTeX-env-label)
;; 					      '("example" LaTeX-env-label)
;; 					      '("problem" LaTeX-env-label)
;; 					      '("question" LaTeX-env-label)
;; 					      '("proof" LaTeX-env-proof foo bar)
;; 					      '("enumerate" LaTeX-env-roman-enumerate foo))
;; 		      (reftex-add-label-environments
;; 		       '(("proposition" ?p "prop:" "~\ref{%s}" t nil -3)
;; 			 ("corollary" ?p "prop:"  "~\ref{%s}" t nil -3)
;; 			 ("lemma" ?p "prop:"  "~\ref{%s}" t nil -3)
;; 			 ("theorem" ?p "prop:"  "~\ref{%s}" t nil -3)
;; 			 ("statement" ?p "prop:"  "~\ref{%s}" t nil -3)
;; 			 ("conjecture" ?p "prop:"  "~\ref{%s}" t nil -3)
;; 			 ("definition" ?d "def:"  "~\ref{%s}" t nil -3)
;; 			 ("question" ?q "q:"  "~\ref{%s}" t nil -3)
;; 			 ("problem" ?z "prob:"  "~\ref{%s}" t nil -3)
;; 			 ("examples" ?x "ex:"  "~\ref{%s}" t nil -3)
;; 			 ("example" ?x "ex:"  "~\ref{%s}" t nil -3))))))
;; ;;		      (setq LaTeX-font-list (append LaTeX-font-list
;; ;;						    '((?\C-k "" "" "\\mathfrak{" "}")))))))


;; (defun LaTeX-env-proof (environment &optional ignore ignore)
;;   (LaTeX-insert-environment 
;; 		  environment))

;; (defun LaTeX-env-roman-enumerate (environment &optional ignore)
;;   "Insert ENVIRONMENT and the first item."
;;   (LaTeX-insert-environment environment)
;;   (if (TeX-active-mark)
;;       (progn
;; 	(LaTeX-find-matching-begin)
;; 	(end-of-line 1))
;;     (end-of-line 0))
;;   (delete-char 1)
;;   (when (looking-at (concat "^[ \t]+$\\|"
;; 			    "^[ \t]*" TeX-comment-start-regexp "+[ \t]*$"))
;;     (delete-region (point) (line-end-position)))
;;   (delete-horizontal-space)
;;   (insert "\\romanenumi")
;;   (LaTeX-insert-item)
;;   ;; The inserted \item may have outdented the first line to the
;;   ;; right.  Fill it, if appropriate.
;;   (when (and (not (looking-at "$"))
;; 	     (not (assoc environment LaTeX-indent-environment-list))
;; 	     (> (- (line-end-position) (line-beginning-position))
;; 		(current-fill-column)))
;;     (LaTeX-fill-paragraph nil)))
