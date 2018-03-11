;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; basic config
;; (load "$HOME/.emacs.d/elisp/lang/pref.el")

;; global flycheck mode
;; (load "$HOME/.emacs.d/elisp/library/flycheck.el")
;; (enable-flycheck-mode t)

;; global company mode
;; (load "$HOME/.emacs.d/elisp/library/company-mode.el")
;; (enable-company-mode t)

;; clojure mode
;; (load "$HOME/.emacs.d/elisp/lang/clojure.el")
;; (enable-clojure)

;; python mode
;; (load "$HOME/.emacs.d/elisp/lang/python.el")
;; (python-config "/usr/local/bin/python3.6")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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
