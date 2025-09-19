;;; init-amx.el --- Improved M-x interface -*- lexical-binding: t -*-
;;; Commentary:
;; amx enhances the built-in `M-x` by providing better command
;; history and completion. It remembers frequently and recently
;; used commands, making it faster to run them again.
;;; Code:

(use-package amx
  :ensure t
  :init (amx-mode))

(provide 'init-amx)
;;; init-amx.el ends here
