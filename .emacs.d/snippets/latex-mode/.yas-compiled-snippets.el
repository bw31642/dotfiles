;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
		     '(("begin" "\\begin{${1:environment}}\n$0\n\\end{$1}" "\\begin{environment} ... \\end{environment}" nil nil nil nil nil nil)
		       ("emph" "\\emph{$1}" "\\emph{...}" nil nil nil nil nil nil)
		       ("st" "\\st{$1}" "\\st{...}" nil nil nil nil nil nil)
		       ("bf" "\\textbf{$1}" "\\textbf{...}" nil nil nil nil nil nil)
		       ("tt" "\\texttt{$1}" "\\texttt{...}" nil nil nil nil nil nil)
		       ("ul" "\\underline{$1}" "\\underline{...}" nil nil nil nil nil nil)
		       ("uct" "\\usecolortheme{${1:default$$(yas/choose-value '(\"default\" \"albatross\" \"beaver\" \"beetle\" \"crane\" \"dolphin\" \"dove\" \"fly\" \"lily\" \"orchid\" \"rose\" \"seagull\" \"seahorse\" \"sidebartab\" \"structure\" \"whale\" \"wolverine\"))}}" "\\usecolortheme{\"dove\"}" nil nil nil nil nil nil)
		       ("ut" "\\usetheme{${1:default(yas/choose-value '(\"default\" \"AnnArbor\" \"Antibes\" \"Bergen\" \"Berkeley\" \"Berlin\" \"Boadilla\" \"CambridgeUS\" \"Copenhagen\" \"Darmstadt\" \"Dresden\" \"Frankfurt\" \"Goettingen\" \"Hannover\" \"Ilmenau\" \"JuanLesPins\" \"Luebeck\" \"Madrid\" \"Malmoe\" \"Marburg\" \"Montpellier\" \"PaloAlto\" \"Pittsburgh\" \"Rochester\" \"Singapore\" \"Szeged\" \"Warsaw\" \"boxes\"))}}" "\\usetheme{\"Rochester\"}" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Apr 17 16:58:18 2013
