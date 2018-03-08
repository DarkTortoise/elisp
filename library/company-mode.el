(defun toggle-company-mode (status)
  (when status
    (add-hook 'after-init-hook 'global-company-mode)))
