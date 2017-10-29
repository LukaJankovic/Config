;; -*- lexical-binding: t -*-


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(add-to-list 'load-path "~/.emacs.d/iterm-emacs")
(require 'iterm-emacs)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/telephone-line")
(require 'telephone-line-config)
(setq telephone-line-primary-left-separator 'telephone-line-cubed-left
      telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
      telephone-line-primary-right-separator 'telephone-line-cubed-right
      telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)
(setq telephone-line-height 24
      telephone-line-evil-use-short-tag t)
(telephone-line-evil-config)

(add-to-list 'load-path "~/.emacs.d/avy")
(require 'avy)

(add-to-list 'load-path "~/.emacs.d/evil-snipe")
(require 'evil-snipe)
(evil-snipe-mode 1)
(setq evil-snipe-scope 'whole-buffer)

(add-to-list 'load-path "~/.emacs.d/ace-window")
(require 'ace-window)

(global-set-key (kbd "C-+") 'enlarge-window)

(global-set-key (kbd "C-M-+") 'enlarge-window-horizontally)

(global-set-key (kbd "<C-tab>") 'ace-window)

(global-set-key (kbd "M-+") 'avy-goto-line)
(define-key evil-normal-state-map "+" 'avy-goto-char)

(if (package-installed-p 'win-switch)
    nil
  (package-install 'win-switch))

(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<left>") 'windmove-left)

; (tool-bar-mode -1)
; (menu-bar-mode -1)
; (scroll-bar-mode -1)

(unless (display-graphic-p)
  (menu-bar-mode -1))

(set-face-foreground 'mode-line "blue")
(set-face-background 'mode-line "#FFFFFF")
(set-face-foreground 'mode-line-inactive "blue")
(set-face-background 'mode-line-inactive "#FFFFFF")

(require 'multiple-cursors)

(global-set-key (kbd "C-c e") 'mc/edit-lines)

(global-set-key (kbd "M-n") 'mc/mark-next-like-this)
(global-set-key (kbd "M-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "M-a") 'mc/mark-all-like-this)

(global-eldoc-mode -1)

(global-linum-mode t)
(setq linum-format "%4d \u2502 ")
(set-face-foreground 'linum "Blue")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (multiple-cursors win-switch projectile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
