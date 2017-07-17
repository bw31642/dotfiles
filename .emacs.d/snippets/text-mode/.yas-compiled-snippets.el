;;; Compiled snippets and support files for `text-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("date" "`(format-time-string \"%Y-%m-%d\")`" "(current date YYYY-MM-DD)" nil nil nil nil nil nil)
		       ("email" "`(replace-regexp-in-string \"@\" \"@NOSPAM.\" user-mail-address)`" "(user's email)" nil nil nil nil nil nil)
		       ("time" "`(current-time-string)`" "(current time)" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Apr 17 16:58:18 2013
