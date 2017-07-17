;
; Set some global settings

(setq load-path (cons (expand-file-name "~/.elisp") load-path))
(setq redisplay-dont-pause t)
(setq make-backup-files nil)
(setq tramp-default-method "ssh")
(setq auto-save-mode nil)
(setq auto-save-default nil)
(setq gnutls-min-prime-bits 1024)
(setq sentence-end-double-space nil)
(global-font-lock-mode t)
(setq next-line-add-newlines nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4) 
(setq tab-width 4)
					;
;; turn off toolbar
(if window-system
    (tool-bar-mode 0))
(if window-system
    (scroll-bar-mode -1))

; FOLDING
(autoload 'folding-mode          "folding" "Folding mode" t)
(autoload 'turn-off-folding-mode "folding" "Folding mode" t)
(autoload 'turn-on-folding-mode  "folding" "Folding mode" t)
(require 'folding)
(folding-mode-add-find-file-hook)
(folding-add-to-marks-list 'perl-mode "#{{" "#}}" nil t)
(folding-add-to-marks-list 'python-mode "#{{" "#}}" nil t)
(folding-add-to-marks-list 'sh-mode "#{{" "#}}" nil t)

(menu-bar-mode -1)
(column-number-mode 1)

;(require 'fill-column-indicator)
;(define-globalized-minor-mode
;   global-fci-mode fci-mode (lambda () (fci-mode 1)))

;(global-fci-mode t)

; xcscope
;(require 'xcscope)
;(cscope-setup)

;sr-speedbar
(require 'sr-speedbar)

;org mode
;(add-to-list 'load-path "~/.elisp/org-mode/lisp")
;(add-to-list 'load-path "~/.elisp/org-mode/contrib/lisp" t)
;(require 'org)
;'(load-file "~/.elisp/org-config.el")

;; ;dash (needed by pop-up)
;; (add-to-list 'load-path "~/.elisp/dash")
;; (require 'dash)

;; ;pop-up
;; (add-to-list 'load-path "~/.elisp/popup-el")
;; (require 'popup)

;; ;auto-complete
;; (add-to-list 'load-path "~/.elisp/auto-complete")
;; (require 'auto-complete-config)
;; (ac-config-default)

;; ;ac-html mode
;; (add-to-list 'load-path "~/.elisp/ac-html")
;; (require 'ac-html)
;; (add-to-list 'auto-mode-alist '("\\.html$" . haml-mode-hook))

;(add-to-list 'load-path "~/.elisp/web-mode")
;(require 'web-mode)
(setq web-mode-enable-auto-pairing nil)
(setq web-mode-enable-css-colorization t)
(setq web-mode-enable-block-face t)
(setq web-mode-enable-part-face t)
(setq web-mode-enable-comment-keywords t)
(setq web-mode-enable-heredoc-fontification t)

; Transparency
;(set-frame-parameter (selected-frame) 'alpha '(85 50))
;(add-to-list 'default-frame-alist '(alpha 85 50))

; dir tree and deps
(require 'windata)
(require 'tree-mode)
(require 'dirtree)

;emms
;(add-to-list 'load-path "~/.elisp/emms/")
;(require 'emms-setup)
;(emms-standard)
;(emms-default-players)

; multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "s-SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; iswitchb
;(iswitchb-mode 1)
;(setq iswitchb-buffer-ignore '("^ " "*Buffer"))

; ido mode - better than iswitchb
;(ido-mode 't)

; Column hightlighting 
; (require 'column-marker)
; (add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 80)))
; (add-hook 'perl-mode-hook (lambda () (interactive) (column-marker-1 80)))
; (add-hook 'shell-mode-hook (lambda () (interactive) (column-marker-1 80)))
; (global-set-key [?\C-c ?m] 'column-marker-1)


; Add UK based holdiays, ignore everything else
(load-file "~/.elisp/uk-holidays.el")
(setq  holiday-local-holidays nil)
(setq  holiday-bahai-holidays nil)
(setq  holiday-christian-holidays nil)
(setq  holiday-hebrew-holidays nil)
(setq  holiday-islamic-holidays nil)
(setq  holiday-oriental-holidays nil)
(setq  holiday-other-holidays nil)


; twiki mode
(autoload 'twiki-mode          "twiki" "Twiki mode" t)
(add-to-list 'auto-mode-alist'("\\.twiki$" . twiki-mode))

; dired mods
(defun dired-find-file-other-frame ()
  "In Dired, visit this file or directory in another window."
  (interactive)
  (find-file-other-frame (dired-get-file-for-visit)))
(eval-after-load "dired"
  '(define-key dired-mode-map "F" 'dired-find-file-other-frame))


; YASnippet
;(require 'yasnippet) ;; not yasnippet-bundle
;(setq yas-trigger-key "<tab>")
;(yas--initialize)
;(yas/load-directory "~/.elisp/snippets")
;(add-hook 'org-mode-hook
;	  (lambda ()
;	    (org-set-local 'yas-trigger-key [tab])
;	    (define-key yas-keymap [tab] 'yas-next-field-or-maybe-expand)))
;(defun yas-org-very-safe-expand ()
;  (let ((yas-fallback-behavior 'return-nil)) (yas/expand)))

;(add-hook 'org-mode-hook
;	  (lambda ()
;	    (make-variable-buffer-local 'yas-trigger-key)
;	    (setq yas-trigger-key [tab])
;	    (add-to-list 'org-tab-first-hook 'yas-org-very-safe-expand)
;	    (define-key yas-keymap [tab] 'yas-next-field)))

; auctex
(setq font-latex-fontify-script nil)
(setq font-latex-fontify-sectioning 'color)
; modify Beamer as well
(setq TeX-PDF-mode t)
(setq TeX-view-program-selection
      '((output-dvi "DVI Viewer")
        (output-pdf "PDF Viewer")
        (output-html "HTML Viewer")))
;; this example is good for OS X only
(setq TeX-view-program-list
      '(("DVI Viewer" "mupdf %o")
        ("PDF Viewer" "mupdf %o")
        ("HTML Viewer" "chromium %o")))


; turn off audible bell
(setq visible-bell t)

; follow symbolic links to real name
(setq find-file-visit-truename t)

; make ^K kill thru newline
(setq kill-whole-line t)

; highlight marked region
(transient-mark-mode 1)

; the shell used in M-x shell
(setq explicit-shell-file-name "bash")

; some handy function keys
(global-set-key [f1] 'start-kbd-macro)
(global-set-key [f2] 'end-kbd-macro)
(global-set-key [f3] 'call-last-kbd-macro)
(global-set-key [f5] 'next-error)
(global-set-key [f9] 'compile)
(global-set-key [f10] 'goto-line)
(global-set-key [S-f1] 'man)
(global-set-key (kbd "<end>") 'move-end-of-line)
(global-set-key (kbd "<home>") 'move-beginning-of-line)



(defun my-mark-word (N)
  (interactive "p")
  (if (and 
       (not (eq last-command this-command))
       (not (eq last-command 'my-mark-word-backward)))
      (set-mark (point)))
  (forward-word N))


(defun my-mark-word-backward (N)
  (interactive "p")
  (if (and
       (not (eq last-command this-command))
       (not (eq last-command 'my-mark-word)))
      (set-mark (point)))
  (backward-word N))

(global-set-key (kbd "M-k") 'my-mark-word)
(global-set-key (kbd "M-j") 'my-mark-word-backward)



(global-set-key "%" 'match-paren)
(defun match-paren (arg)
        "Go to the matching parenthesis if on parenthesis otherwise insert %."
        (interactive "p")
        (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
              ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
              (t (self-insert-command (or arg 1)))))


; Style / tab settings
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (setq c-basic-offset 8)))
(add-hook 'c-mode-hook
	  '(lambda ()
	     (setq c-basic-offset 8)))

(add-hook 'c++-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)))
(add-hook 'c-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)))


(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
