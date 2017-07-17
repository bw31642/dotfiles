;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("ath" "#+ATTR_HTML: alt=\"$1\" img class=\"aligncenter\"\n" "attr_html"
			(=
			 (current-column)
			 3)
			nil nil nil nil nil)
		       ("atl" "#+attr_latex: ${1:width=$2\\textwidth}\n" "attr_latex"
			(=
			 (current-column)
			 3)
			nil nil nil nil nil)
		       ("aut" "#+AUTHOR: ${1:`user-full-name`}\n" "author"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y a" nil)
		       ("block" "#+BEGIN_$1 $2\n  $0\n#+END_$1\n" "#+begin_...#+end_"
			(or
			 (=
			  (current-column)
			  5)
			 (=
			  (current-column)
			  0))
			nil
			((yas/indent-line 'fixed)
			 (yas/wrap-around-region 'nil))
			nil "C-c y b" nil)
		       ("center" "#+BEGIN_CENTER\n$0\n#+END_CENTER" "#+BEGIN_CENTER ... #+END_CENTER" nil nil nil nil nil nil)
		       ("comment" "#+BEGIN_COMMENT\n$0\n#+END_COMMENT\n" "#+BEGIN_COMMENT ... #+END_COMMENT" nil nil nil nil nil nil)
		       ("cor" "# <<$1>>\n#+BEGIN_COROLLARY\n#+latex: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"corollary\" 'dont-insert))}}%\n$0\n#+END_COROLLARY" "corollary"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y c" nil)
		       ("def" "# <<$1>>\n#+BEGIN_DEFINITION\n#+LATEX: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"definition\" 'dont-insert))}}%\n$0\n#+END_DEFINITION" "definition"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y d" nil)
		       ("dit" "#+BEGIN_SRC ditaa ${1:export-file-name} -r -s -e\n${0}\n#+END_SRC\n" "ditaa"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil nil nil)
		       ("drawer" ":DRAWERNAME:\n$0\n:END:\n" ":DRAWERNAME: ... :END:" nil nil nil nil nil nil)
		       ("el" "#+NAME: $1\n#+BEGIN_SRC emacs-lisp\n$0\n#+END_SRC" "el (emacs-lisp)"
			(=
			 (current-column)
			 2)
			nil nil nil nil nil)
		       ("email" "#+EMAIL: ${1:`user-mail-address`}\n" "email"
			(or
			 (=
			  (current-column)
			  5)
			 (=
			  (current-column)
			  0))
			nil nil nil nil nil)
		       ("eqn" "# <<$1>>\n\\begin{equation}\n\\label{${1:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}%\n$0\n\\end{equation}\n" "equation"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y e" nil)
		       ("example" "#+BEGIN_EXAMPLE\n$0\n#+END_EXAMPLE" "#+BEGIN_EXAMPLE ... #+END_EXAMPLE" nil nil nil nil nil nil)
		       ("fig" "#+CAPTION: ${1:figure sample}\n#+LABEL: ${2:fig}${3:\n#+ATTR_LaTeX: width=${4:9cm$$(yas/choose-value '(\"9cm\" \"8cm\"))},angle=${5:0}}\n[[$6]]\n" "#+CAPTION: figure $+LABEL: fig ..." nil nil nil nil nil nil)
		       ("fig" "#+attr_latex: width=$1\\textwidth\n#+ATTR_HTML: width=\"$2%\"\n#+caption: $3\n`(org-insert-link '(4))`\n$0\n" "figure"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y f" nil)
		       ("header.beamer" "#+LaTeX_CLASS: beamer\n#+TITLE: ${1:My Presentation}\n#+AUTHOR: ${2:Julian Qian}\n#+EMAIL: `user-mail-address`\n#+DATE: `(current-time-string)`\n#+LATEX_CLASS_OPTIONS: [presentation]\n#+LATEX_HEADER: \\setmainfont{Big Caslon}\n#+LATEX_HEADER: \\setsansfont{Optima}\n#+LATEX_HEADER: \\setmonofont{American Typewriter}\n#+LATEX_HEADER: \\setCJKmainfont{Kai}\n#+LATEX_HEADER: \\setCJKsansfont{Hei}\n#+LATEX_HEADER: \\setCJKmonofont{STFangsong}\n#+BEAMER_FRAME_LEVEL: ${3:2$$(yas/choose-value '(\"4\" \"3\" \"2\"))}\n#+BEAMER_HEADER_EXTRA: \\usetheme{${4:default$$(yas/choose-value '(\"Berkeley\" \"CambridgeUS\"  \"Frankfurt\" \"PaloAlto\" \"Montpellier\" \"Pittsburgh\" \"Rochester\" \"boxes\" \"Goettingen\" \"default\"))}}\\usecolortheme{${5:default$$(yas/choose-value '(\"albatross\" \"beaver\" \"beetle\" \"crane\" \"dolphin\" \"dove\" \"fly\" \"lily\" \"orchid\" \"rose\" \"seagull\" \"seahorse\" \"sidebartab\" \"structure\" \"whale\" \"wolverine\" \"default\"))}}\n#+COLUMNS: ${6:%35ITEM %10BEAMER_env(Env) %10BEAMER_envargs(Env Args) %4BEAMER_col(Col) %8BEAMER_extra(Extra)}\n#+OPTIONS: tags:${7:nil}\n\n$0" "#+LaTeX_CLASS: beamer ..." nil nil nil nil nil nil)
		       ("header.latex" "#+TITLE: ${1:My Article}\n#+AUTHOR: ${2:Julian Qian}\n#+EMAIL: `user-mail-address`\n#+DATE: `(current-time-string)`\n#+LATEX_HEADER: \\setmainfont[BoldFont=Microsoft YaHei]{WenQuanYi Micro Hei}\n#+LATEX_HEADER: \\setsansfont[BoldFont=Microsoft YaHei]{Microsoft YaHei}\n#+LATEX_HEADER: \\setmonofont[BoldFont=Consolas]{Consolas}\n\n$0" "#+TITLE: ... #+AUTHOR: ... #+LATEX_HEADER: ..." nil nil nil nil nil nil)
		       ("html" "#+BEGIN_HTML\n${0}\n#+END_HTML\n" "#+BEGIN_HTML ... #+END_HTML" nil nil nil nil nil nil)
		       ("inc" "#+INCLUDE: \"${1:~/.emacs}\"${2: src${3: emacs-lisp}}\n$0" "#+INCLUDE: \"~/.emacs\" src emacs-lisp" nil nil nil nil nil nil)
		       ("lan" "#+LANGUAGE: ${1:$$(yas/choose-value '(\"en\" \"es\"))}\n" "language"
			(=
			 (current-column)
			 3)
			nil nil nil nil nil)
		       ("latex" "#+BEGIN_LaTeX\n$0\n#+END_LaTeX\n" "#+BEGIN_LaTeX ... #+END_LaTeX" nil nil nil nil nil nil)
		       ("lcl" "#+LATEX_CLASS: ${1:$$(yas/choose-value '(\"report\" \"book\" \"article\"))}\n" "LaTeX class"
			(=
			 (current-column)
			 3)
			nil nil nil nil nil)
		       ("lhe" "#+LATEX_HEADER: ${1:\\usepackage{$2}}\n" "LaTeX header"
			(=
			 (current-column)
			 3)
			nil nil nil nil nil)
		       ("lem" "# <<$1>>\n#+BEGIN_LEMMA\n#+LATEX: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"lemma\" 'dont-insert))}}%\n$0\n#+END_LEMMA" "lemma"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y l" nil)
		       ("options" "#+OPTIONS: ${1:H:3 toc:t @:t ::t ^:nil -:t LaTeX:t skip:t author:nil email:nil timestamp:t d:t}\n$0\n" "#+OPTIONS: ..." nil nil nil nil nil nil)
		       ("opt" "#+OPTIONS: ${0}" "options"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y o" nil)
		       ("prf" "#+BEGIN_PROOF\n$0\n#+END_PROOF" "proof"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil nil nil)
		       ("properties" " :PROPERTIES:\n :VISIBILITY:folded:\n :END:\n" "properties folded"
			(=
			 (current-column)
			 10)
			nil nil nil nil nil)
		       ("pro" "# <<$1>>\n#+BEGIN_PROPOSITION\n#+latex: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"proposition\" 'dont-insert))}}%\n$0\n#+END_PROPOSITION" "proposition"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y p" nil)
		       ("quote" "#+BEGIN_QUOTE\n$0\n#+END_QUOTE\n" "#+BEGIN_QUOTE ... #+END_QUOTE" nil nil nil nil nil nil)
		       ("sb" "#+NAME: ${1:name}\n#+BEGIN_SRC ${2:language}\n  $3\n#+END_SRC\n" "#+srcname:..#+begin_src...#+end_src"
			(or
			 (=
			  (current-column)
			  2)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y s" nil)
		       ("src" "#+BEGIN_SRC ${1:emacs-lisp$$(yas/choose-value '(\"org\" \"table\" \"dot\" \"perl\" \"latex\" \"gnuplot\" \"css\" \"js\" \"python\" \"sh\" \"sql\" \"emacs-lisp\" \"C\"))}\n$0\n#+END_SRC\n" "#+BEGIN_SRC ... #+END_SRC" nil nil nil nil nil nil)
		       ("sta" "#+STARTUP: ${1:options}" "startup"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil nil nil)
		       ("tbl" "#+CAPTION: ${1:table sample}\n#+LABEL: ${2:tbl:basic-data}${3:\n#+ATTR_LaTeX: ${4:align=r|p{8cm}|l}}\n| $5 |\n" "#+CAPTION: table $+LABEL: tbl ..." nil nil nil nil nil nil)
		       ("text" "#+TEXT: ${1:text}" "text"
			(or
			 (=
			  (current-column)
			  4)
			 (=
			  (current-column)
			  0))
			nil nil nil nil nil)
		       ("thm" "# <<$1>>\n#+BEGIN_THEOREM\n#+latex: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"theorem\" 'dont-insert))}}%\n$0\n#+END_THEOREM" "theorem"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y t" nil)
		       ("tkz" "#+CAPTION: $1\n#+LABEL: ${2:\"waiting\"$(unless yas/modified-p (reftex-label \"figure\" 'dont-insert))}\n#+ATTR_HTML: alt=\"$1\" width=\"$3%\"\n#+ATTR_LATEX: width=0.$3\\textwidth\n#+ATTR_ODT: (:scale 0.$3)\n#+HEADERS: :imagemagick yes :iminoptions -density 300 -resize 400\n#+HEADERS: :packages '((\"\" \"tikz\") (\"\" \"tkz-berge\")) :border 1pt\n#+BEGIN_SRC latex :file ${2:$(substring yas/text 4)}.png\n  \\begin{tikzpicture}\n    ${0}\n  \\end{tikzpicture}\n#+END_SRC\n" "tikz-figure"
			(or
			 (=
			  (current-column)
			  3)
			 (=
			  (current-column)
			  0))
			nil nil nil "C-c y z" nil)
		       ("title" "#+TITLE: $1\n" "#+TITLE: ..." nil nil nil nil nil nil)
		       ("title" "#+TITLE: ${1:title}" "title"
			(=
			 (current-column)
			 5)
			nil nil nil nil nil)
		       ("verse" "#+BEGIN_VERSE\n$0\n#+END_VERSE\n" "#+BEGIN_VERSE ... #+END_VERSE" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Apr 17 16:58:18 2013
