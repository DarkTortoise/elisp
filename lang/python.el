;;; python mode


(defun check-packages ()
  (defvar packages '(elpy
		     ))

  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))
  )

(defun elpy-conf ()
  (elpy-enable)
  )

(defun enable-python-mode ()
  ";;; Code: define packages needed."
  (check-packages)
  (elpy-conf)
  )

;;; python.el ends here
