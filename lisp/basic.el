;;; basic.el --- Load the editor configuration -*- lexical-binding: t -*-
;;; Commentary:

;; 

;;; Code:


;; Basic configuration

;; Interaction / Safety
;(setq confirm-kill-emacs #'y-or-n-p)

;; Editing experience
(electric-pair-mode t)                      
(add-hook 'prog-mode-hook #'show-paren-mode) 
(delete-selection-mode t)                    
(add-hook 'prog-mode-hook #'hs-minor-mode)   

;; File and history
(global-auto-revert-mode t)               
(setq make-backup-files nil)                
(savehist-mode 1)

;; Startup
(setq inhibit-startup-message t)
(display-battery-mode 1)
(display-time-mode 1)

;; Keybings

(use-package hydra
  :ensure t)

(use-package use-package-hydra
  :ensure t
  :after hydra)

(global-set-key (kbd "C-j") nil)
(use-package avy
  :ensure t
  :bind
  (("C-j j" . avy-goto-char-timer)
   ("C-j l" . avy-goto-line)))

(use-package multiple-cursors
  :bind
  ("C-S-<mouse-1>" . mc/toggle-cursor-on-click)) 

(global-set-key (kbd "C-x C-/") 'comment-line)

(provide 'basic)
;;; basic.el ends here
