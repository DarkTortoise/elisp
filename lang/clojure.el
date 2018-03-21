;;; package -- sumarry


(defun check-packages ()
  (defvar packages '(
		     smartparens
		     aggressive-indent-mode
		     clojure-mode
		     cider
		     ))
  
  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))
  )

(defun smartparens-conf ()
  (use-package smartparens
    :ensure smartparens
    :config
    (progn
      (show-smartparens-global-mode t)
      (require 'smartparens-config))
    )
  )

(defun cider-conf ()
  (use-package cider
    :ensure cider
    :config
    (progn
      (setq cider-font-lock-dynamically '(macro core function var)))
    )
  )

(defun enable-clojure-mode ()
  (check-packages)
  (smartparens-conf)
  (cider-conf)
  (add-hook 'clojure-mode-hook #'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
  (add-hook 'clojure-mode-hook #'subword-mode)
  )
