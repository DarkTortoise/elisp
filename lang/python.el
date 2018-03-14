(defun python-config (python-path)
  (use-package elpy
    :init (progn
	    (enable-elpy)
	    (setq elpy-rpc-python-command python-path)
	    (setq python-shell-interpreter python-path))))

(defun enable-python-mode ()
  "Enable python mode"
  (defvar packages '(elpy))

  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))

  (use-package elpy
    :init
    (progn
      (enable-python)
      (setq elpy-rpc-python-command "python3")
      (setq python-shell-interpreter "python3"))
    )
  )
