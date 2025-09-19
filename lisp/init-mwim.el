;;; init-mwim.el --- Move to beginning or end intelligently -*- lexical-binding: t -*-

;;; Commentary:
;; This module configures MWIM (Move Where I Mean) to enhance cursor
;; movement in lines.
;;
;; - `C-a` moves the cursor to the beginning of the code on the line,
;;   then to the actual beginning if pressed again.
;; - `C-e` moves the cursor to the end of the code on the line,
;;   then to the actual end if pressed again.
;;
;; This replaces the default `C-a` and `C-e` behavior with a smarter one
;; that is convenient for programming.

;;; Code:

(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

(provide 'init-mwim)
;;; init-mwim.el ends here
