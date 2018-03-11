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
      (require 'smartparens-config)
      (add-hook 'clojure-mode-hook #'smartparens-mode))
    )

  )
