;;; init-undo-tree.el --- Persistent and visual undo system -*- lexical-binding: t -*-

;;; Commentary:
;; This module configures Undo-Tree to provide a visual and more
;; flexible undo/redo system in Emacs.
;;
;; - Replaces the default linear undo system with a branching tree.
;; - Allows you to navigate the undo history visually.
;; - Optionally disables automatic saving of undo history between sessions.

;;; Code:

(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode)
  :custom
  (undo-tree-auto-save-history nil))

(provide 'init-undo-tree)
;;; init-undo-tree.el ends here
