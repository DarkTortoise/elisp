(defun toggle-menu-bar (turn-on)
  (if turn-on
      (menu-bar-mode 1)
    (menu-bar-mode nil)))

(defun enable-base16 ()
  (use-package 'base16-theme
    :ensure t
    :config
    (load-theme 'base16-atelier-sulphurpool)))

(defun enable-theme ()
  (toggle-menu-bar nil)
  (enable-base16)
  (scroll-bar-mode -1))
