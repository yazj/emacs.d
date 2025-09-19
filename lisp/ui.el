;;; ui.el --- UI and appearance configuration -*- lexical-binding: t -*-
;;; Commentary:
;; Theme, fonts, line numbers, icons, and frame settings
;;; Code:

;; Font and frame
(add-to-list 'default-frame-alist '(fullscreen . fullboth))
(set-face-attribute 'default nil :family "LXGW WenKai Mono" :height 155)

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

;; Plugins

(use-package good-scroll
  :ensure t
  :if window-system         
  :init (good-scroll-mode))

(use-package which-key
  :ensure t
  :init (which-key-mode))

; adds marginalia to the minibuffer completions. 
(use-package marginalia
  :ensure t
  :init (marginalia-mode)
  :bind (:map minibuffer-local-map
			  ("M-A" . marginalia-cycle)))

(use-package highlight-symbol
  :ensure t
  :init (highlight-symbol-mode)
  :bind ("<f3>" . highlight-symbol))

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package magit
  :ensure t)

;; Dashboard

(use-package dashboard
  :ensure t
  :config
  (setq dashboard-banner-logo-title "久久为功,功到自然成") 
  ;; (setq dashboard-projects-backend 'projectile) 
  (setq dashboard-startup-banner 'official)
  (setq dashboard-items '((recents  . 5)   
			  (bookmarks . 5)  
			  (projects . 10)))
  (dashboard-setup-startup-hook))

;; Mode line

;; (use-package smart-mode-line
;;   :ensure t
;;   :init (sml/setup))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-time-icon t)
  (setq doom-modeline-display-misc-in-all-mode-lines nil))

(provide 'ui)
;;; ui.el ends here
