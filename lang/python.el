;;; python mode

";;; Code: enable python mode."
(defun enable-python-mode ()
  ";;; Code: define packages needed."
  (defvar packages '(anaconda-mode
		     company-anaconda))

  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))
  
  (use-package anaconda-mode
    :config
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'anaconda-eldoc-mode)
    
    )
  )

;;; python.el ends here
