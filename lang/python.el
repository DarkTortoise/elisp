;;; python mode

(defun enable-python-mode ()
  ";;; Code: python mode."
  (defvar packages '(elpy))

  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p)))

  (use-package elpy
    :init
    (progn
      (elpy-enable)
      (setq elpy-rpc-python-command "python3.6")
      (setq python-shell-interpreter "python3.6"))
    )
  )
