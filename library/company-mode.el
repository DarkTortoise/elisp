(defun enable-company-mode ()
  (defvar packages '(company))

  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))
  
  (use-package company
    :ensure t
    :config (add-hook 'after-init-hook 'global-company-mode))
  )
