;;; ivy.el --- Completion and enhanced M-x interface -*- lexical-binding: t -*-
;;; Commentary:
;; This module sets up Ivy, Counsel, Swiper, and Amx for a modern
;; completion and command execution experience.
;;
;; - Ivy provides a lightweight and flexible minibuffer completion framework.
;; - Counsel adds a collection of enhanced commands based on Ivy.
;; - Swiper provides an improved in-buffer search interface.
;; - Amx improves `M-x` with command frequency and history tracking.
;;; Code:

(use-package counsel
  :ensure t)

(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  (counsel-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq search-default-mode #'char-fold-to-regexp)
  (setq ivy-count-format "(%d/%d) ")
  :bind
  (("C-s" . 'swiper)
   ("C-x b" . 'ivy-switch-buffer)
   ("C-c v" . 'ivy-push-view)
   ("C-c s" . 'ivy-switch-view)
   ("C-c V" . 'ivy-pop-view)
   ("C-x C-@" . 'counsel-mark-ring)
   ("C-x C-SPC" . 'counsel-mark-ring)
   :map minibuffer-local-map
   ("C-r" . counsel-minibuffer-history)))

(use-package amx
  :ensure t
  :init (amx-mode))

(provide 'ivy)
;;; ivy.el ends here
