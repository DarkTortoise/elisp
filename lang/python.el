;;; python mode


(defun check-packages ()
  (defvar packages '(anaconda-mode
		     company-anaconda))

  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))
  )

(defun anaconda-mode-conf ()
  (use-package anaconda-mode
    :ensure t
    )
  )

(defun company-anaconda-conf ()
  (use-package company-anaconda
    :ensure t))

(defun enable-python-mode ()
  ";;; Code: define packages needed."
  (check-packages)
  (anaconda-mode-conf)
  (company-anaconda-conf)
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode)
  
  )

;;; python.el ends here
