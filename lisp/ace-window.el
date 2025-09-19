;;; ace-window.el --- Quickly switch between windows -*- lexical-binding: t -*-
;;; Commentary:
;; ace-window provides a quick and easy way to switch between windows
;; using a single keystroke. Instead of cycling through windows with
;; `other-window', ace-window displays shortcuts on each window and
;; lets you jump directly.
;;; Code:

(use-package ace-window
  :ensure t
  :bind (("C-x o" . 'ace-window)))

(provide 'ace-window)
;;; ace-window.el ends here
