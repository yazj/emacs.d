;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; 

;;; Code:

;; Package
(eval-when-compile (require 'use-package))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; (setq url-proxy-services
;;       '(("no_proxy" . "^\\(192\\.168\\..*\\)")
;;         ("http" . "127.0.0.1:12334")
;;         ("https" . "127.0.0.1:12334")))

;;
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Adjust garbage collection thresholds during startup, and thereafter
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;; Basic
(require 'basic)

;; UI and apperance configuration
(require 'ui)

;;
(require 'ivy)        ; Completion and enhanced M-x interface
(require 'amx)        ; Improved M-x interface
(require 'ace-window) ; Quickly switch between windows

;; Customize
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init)
;;; init.el ends here
