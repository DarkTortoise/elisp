(defun enable-flycheck-mode ()
  (defvar packages '('use-package
		     'flycheck))

  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))
  
  (use-package flycheck
    :ensure t
    :init (global-flycheck-mode)))
