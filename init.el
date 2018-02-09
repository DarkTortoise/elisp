;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; basic config
;; (load "$HOME/.emacs.d/basic-config.el")

;; python mode
;; (load "$HOME/.emacs.d/python-config.el")
;; (enable-python-mode "python3.6")

;; erlang mode
;; (load "$HOME/.emacs.d/erlang-config.el")
;; (enable-erlang-mode)

;; AucTex
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)


;; Perl
(defalias 'perl-mode 'cperl-mode)

;; load company mode
(add-hook 'after-init-hook 'global-company-mode)

;; cc mode style
(setq c-default-style "k&r")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
		  (company-dabbrev-code company-gtags company-etags company-keywords)
		  company-oddmuse company-dabbrev)))
 '(package-selected-packages (quote (elpy company)))
 '(safe-local-variable-values
   (quote
    ((company-clang-arguments "-I../../include/")
     (company-clang-arguments "-I./include/")
     (company-clang-arguments "-I./include")
     (company-clang-arguments "-I./include" "-I./include/kernel")
     (company-clang-arguments "-I../include")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
