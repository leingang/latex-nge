----------------------------------------------------------------
NGEd --- A Next Generation Educational Bundle
by Matthew Leingang <leingang@courant.nyu.edu>
Released under the LaTeX Project Public License v1.3c or later
See http://www.latex-project.org/lppl.txt
----------------------------------------------------------------

ABOUT THIS PROJECT

CLASSES AND PACKAGES

INSTALLATION INFORMATION

\RequirePackage{svninfo}
\svnInfo $Id: nged.dtx 516 2009-08-28 20:11:08Z leingang $
\svnKeyword $HeadURL: https://subversive.cims.nyu.edu/mathclinical/nged/branches/3.0-dev1/nged.dtx $
\edef\ngefiledate{\svnInfoMaxYear/\svnInfoMaxMonth/\svnInfoMaxDay}
\makeatletter
\def\svnInfoBranch{--branch--}
\def\svnInfoTag{--tag--}
\newboolean{ngesvnurlisbranch}
\newboolean{ngesvnurlistag}
\newboolean{ngesvnurlistrunk}
\def\@parseSvnInfoHeadURL@branchflag{branches}
\def\@parseSvnInfoHeadURL@tagflag{tags}
\def\@parseSvnInfoHeadURL@trunkflag{trunk}
\def\@parseSvnInfoHeadURL@branch#1/#2/\relax/{%
  \setboolean{ngesvnurlisbranch}{true}%
  \xdef\ngesvnInfoBranch{#1}}
\def\@parseSvnInfoHeadURL@tag#1/#2/\relax/{%
  \setboolean{ngesvnurlistag}{true}%
  \xdef\ngesvnInfoTag{#1}}
\def\@parseSvnInfoHeadURL@trunk#1/\relax/{%
  \setboolean{ngesvnurlistrunk}{true}}
\def\parseSvnInfoHeadURL{\expandafter\@parseSvnInfoHeadURL\svnInfoHeadURL/\relax/}
\def\@parseSvnInfoHeadURL#1/{
\let\@parseSvnInfoHeadURL@next=\relax
\ifx\relax#1
\let\@parsesvnInfoHeadURL@next=\empty%
\else
\ifthenelse{\equal{#1}{\@parseSvnInfoHeadURL@branchflag}}
{\let\@parseSvnInfoHeadURL@next=\@parseSvnInfoHeadURL@branch}
    {\ifthenelse{\equal{#1}{\@parseSvnInfoHeadURL@tagflag}}
{\expandafter\@parseSvnInfoHeadURL@tag}
{\ifthenelse{\equal{#1}{\@parseSvnInfoHeadURL@trunkflag}}
{\let\@parseSvnInfoHeadURL@next=\@parseSvnInfoHeadURL@trunk}
{\let\@parseSvnInfoHeadURL@next=\@parseSvnInfoHeadURL}}}
\fi
\expandafter\@parseSvnInfoHeadURL@next
}
\parseSvnInfoHeadURL
\ifthenelse{\boolean{ngesvnurlisbranch}}{
  \xdef\ngefileversion{b\ngesvnInfoBranch}
  }{
  \ifthenelse{\boolean{ngesvnurlistag}}{
    \xdef\ngefileversion{v\svnInfoTag}
    }{
    \xdef\ngefileversion{r\svnInfoMaxRevision}}}
\makeatother
\NeedsTeXFormat{LaTeX2e}
[\ngefiledate\space \ngefileversion\space \ngefileinfo]
%%<*driver>
%%</driver>

