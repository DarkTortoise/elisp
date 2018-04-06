(defun enable-base16 ()
  (use-package 'base16-theme
    :ensure t
    :config
    (load-theme 'base16-atelier-sulphurpool t)))

(defun enable-theme ()
  (menu-bar-mode nil)
  (enable-base16)
  (scroll-bar-mode -1))
