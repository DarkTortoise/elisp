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
      (require 'smartparens-config))

    (use-package clojure-mode
      :ensure t
      :config (progn
		(add-hook 'clojure-mode-hook #'smartparens-strict-mode)))

    (use-package cider
      :ensure t)
    )

  )
