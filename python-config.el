;; python interactive shell
(defun enable-python-mode (python-version)
  (let (python-path)
    (setq python-path (shell-command-to-string (format "which %s" python-version)))
    (message (format "[python] python path : %s" python-path))
    
    (when (string-match "Command not found" python-path)
      (error (format "%s" python-path)))

    (setq python-shell-interpreter (substring python-path 0 -1))
    (message (format "[python] python shell interpreter : %s" python-shell-interpreter))
    
    (when (require 'elpy nil 'noerror)
      (message "[python] elpy mode is installed")
      (elpy-enable)
      (setq elpy-rpc-python-command python-version)
      (setq elpy-syntax-check-command "epylint"))

    (when (not (require 'elpy nil 'noerror))
      (message "[python] elpy mode is not installed")
      )
    
    ))  
