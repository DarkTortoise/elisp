;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; basic config
(load "$HOME/.emacs.d/basic-config.el")

;; python mode
(load "$HOME/.emacs.d/python-config.el")
(enable-python-mode "python3.6")

;; erlang mode
(load "$HOME/.emacs.d/erlang-config.el")
(enable-erlang-mode)

;; elpy mode
;; (elpy-enable)
;; (setq elpy-rpc-python-command "python3.6")

;; python anaconda-mode
;; (add-hook 'python-mode-hook 'anaconda-mode)
;; (add-hook 'python-mode-hook 'anaconda-eldoc-mode)
;; (eval-after-load "company"
;;   '(add-to-list 'company-backends '(company-anaconda :with company-capf)))

;; setting python shell
;; use python3 as default executive shell
;; (setq python-shell-interpreter (substring (shell-command-to-string "which python3.6") 0 -1))

;; use python2 as default executive shell
;; (setq python-shell-interpreter (substring (shell-command-to-string "which python2") 0 -1))

;; user setting

;; AucTex
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)


;; CMake
(setq auto-mode-alist
	  (append
	   '(("CMakeLists\\.txt\\'" . cmake-mode))
	   '(("\\.cmake\\'" . cmake-mode))
	   auto-mode-alist))

(autoload 'cmake-mode "/usr/share/emacs/site-lisp/cmake-mode.el" t)

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
