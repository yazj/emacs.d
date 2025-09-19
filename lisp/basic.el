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

(provide 'basic)
;;; basic.el ends here
