;;; ui.el --- UI and appearance configuration -*- lexical-binding: t -*-
;;; Commentary:
;; Theme, fonts, line numbers, icons, and frame settings
;;; Code:

;; Font and frame
(add-to-list 'default-frame-alist '(fullscreen . fullboth))
(set-face-attribute 'default nil :family "Source Code Pro" :height 155)

;; Line numbers
(column-number-mode t)   
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Disable GUI elements
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

;; all-the-icons
(use-package all-the-icons
  :if (display-graphic-p)
  :config
  ;; Install fonts automatically if needed
  (unless (member "all-the-icons" (font-family-list))
    (all-the-icons-install-fonts t)))

;; theme
(use-package doom-themes
  :ensure t
  :custom
  ;; Global settings (defaults)
  (doom-themes-enable-bold t)   ; if nil, bold is universally disabled
  (doom-themes-enable-italic t) ; if nil, italics is universally disabled
  :config
  (load-theme 'doom-solarized-light t)
  
  ;; Enable flashing mode-line on errors
  ;(doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (nerd-icons must be installed!)
  ;(doom-themes-neotree-config)
  ;; or for treemacs users
  ;(doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))


(provide 'ui)
;;; ui.el ends here
