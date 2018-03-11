(defun enable-clojure-mode ()
  (defvar packages '(smartparens
		     aggressive-indent-mode
		     clojure-mode
		     cider))
  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))

  (progn
    (use-package smartparens
      :config
      (progn
	(require 'smartparens-config)
	(add-hook 'clojure-mode-hook #'smartparens-strict-mode)))

    (use-package clojure-mode
      :ensure t
      )

    (use-package cider
      :ensure t)
    )

  )
