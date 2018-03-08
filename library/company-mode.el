(defun toggle-company-mode (status)
  (when status
    (ad-hook 'after-init-hook 'global-company-mode)))
