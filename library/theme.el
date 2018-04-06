(defun enable-theme (turn-on)
  (if turn-on
      (progn
	(tool-bar-mode -1)
	(load-theme 'base16-atelier-sulphurpool t)
	(scroll-bar-mode -1))
    (progn
      (tool-bar-mode 1)
      (scroll-bar-mode 1))))
