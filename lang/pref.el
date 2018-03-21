;; emacs basic configuration

;; enable ibuffer
(defalias 'list-buffers 'ibuffer)

;; enable ido mode
(ido-mode 1)

;; enable electric mode
(electric-pair-mode 1)

;; highlight bracker
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)

;; save all backup files into one directory
(setq backup-directory-alist '(("" . "~/.emacs.d/backup-files")))
