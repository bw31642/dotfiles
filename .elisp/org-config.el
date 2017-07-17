(require 'ox-latex)
(require 'ox-beamer)
(require 'ox-groff)
(setq org-confirm-babel-evaluate nil)
(add-to-list 'org-latex-classes
           '("article"
             "\\documentclass{article}"
             ("\\section{%s}" . "\\section*{%s}")
             ("\\subsection{%s}" . "\\subsection*{%s}")
             ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
             ("\\paragraph{%s}" . "\\paragraph*{%s}")
             ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))

(org-babel-lob-ingest "/home/w7654402/.emacs.d/lob/library-of-babel.org")
(org-babel-do-load-languages
      'org-babel-load-languages
      '((latex . t)
        (R . t)))

(defun sa-org-export-preprocess-hook ()
  "My backend aware export preprocess hook."
  (save-excursion
    (when (eq org-export-current-backend 'latex)
      ;; ignoreheading tag for bibliographies and appendices
      (let* ((tag "ignoreheading"))
        (org-map-entries (lambda ()
                           (delete-region (point-at-bol) (point-at-eol)))
                         (concat ":" tag ":"))))))

(add-hook 'org-export-preprocess-hook 'sa-org-export-preprocess-hook)

(setq org-default-notes-file "~/gtd/in.org")
(setq org-default-archive-file "~/gtd/archive.org")
(setq org-log-done t)
(setq org-todo-keywords '((sequence "NEXT" "WAIT" "TODO" "|" "DONE")))
(setq org-todo-keyword-faces '(("TODO" . "BROWN")("WAIT" . "PURPLE")))
(setq org-enforce-todo-dependencies t)
(setq org-agenda-sorting-strategy
      '((agenda habit-down time-up priority-down category-keep)
	(todo todo-state-up priority-down category-keep)
	(tags priority-down category-keep)
	(search category-keep))
      )
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates (quote ( ("i" "inbox" entry (file+headline "work.org" "IN") "")
                                     ("j" "Journal" entry (file+datetree "~/gtd/diary.org") "*** %^{Heading}\n%t\n") )))
(setq org-refile-targets (quote ((nil :maxlevel . 4))))
(setq org-refile-use-outline-path t)
(setq org-cycle-seperator-lines 2)
(setq org-agenda-files (quote ("/home/w7654402/gtd/work.org")))
(setq org-agenda-diary-file "/home/w7654402/gtd/diary.org")
(setq org-adapt-indentation t)

(add-hook 'org-mode-hook
      '(lambda ()
         (delete '("\\.html\\'" . default) org-file-apps)
         (add-to-list 'org-file-apps '("\\.html\\'" . "firefox %s"))))

(defun org-export-latex-no-toc (depth)  
    (when depth
      (format "%% Org-mode is exporting headings to %s levels.\n"
              depth)))
  (setq org-export-latex-format-toc-function 'org-export-latex-no-toc)

(setq org-agenda-custom-commands
      '(("D" "Daily Action List"
           ((agenda "" ((org-agenda-ndays 1)
                       (org-agenda-sorting-strategy
                        (quote ((agenda time-up priority-down tag-up) )))
                       (org-deadline-warning-days 0)
                       ))))))
