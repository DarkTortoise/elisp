(defun enable-flycheck-mode ()
  (defvar packages '(flycheck))

  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))
  
  (use-package flycheck
    :ensure t
    :init (global-flycheck-mode)))
