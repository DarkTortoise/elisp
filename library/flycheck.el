(defun toggle-flycheck (status)
  (use-package flycheck
    :ensure t
    :init (global-flycheck-mode)))
