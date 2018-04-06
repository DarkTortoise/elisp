(defun enable-base16 ()
  (use-package base16-theme
    :ensure t
    :config
    (load-theme 'base16-atelier-sulphurpool t)))

(defun enable-theme (turn-on)
  (if turn-on
      (progn
	(tool-bar-mode -1)
	(enable-base16)
	(scroll-bar-mode -1))
    (progn
      (tool-bar-mode 1)
      (scroll-bar-mode 1))))
