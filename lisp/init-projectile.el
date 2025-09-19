;;; init-projectile.el --- Projectile COnfiguration -*- lexical-binding: t -*-
;;; Commentary

;;

;;; Code:

;;

(use-package projectile
  :ensure t
  :bind (("C-c p" . projectile-command-map))
  :config
  (setq projectile-mode-line "Projectile")
  (setq projectile-track-known-projects-automatically nil))

(use-package counsel-projectile
  :ensure t
  :after (projectile)
  :init (counsel-projectile-mode))

  (provide 'init-projectile)
  ;;; init-projectile.el ends here
