;;; mu4e --- emacs email client
;;; Commentary:
;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  general setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(print-log "loading general setting")
;;------------------------------------------------------------------------------
;; time setting
;;------------------------------------------------------------------------------

(setq display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)
(setq display-time-use-mail-icon t)
(display-time)
(setq time-stamp-active t)
(setq time-stamp-format "%:u %04y/%02m/%02d %02H02M02S")
(add-hook 'write-file-hooks 'time-stamp)



;;-------------------------------------------------------------------------------
;; default coding system
;;------------------------------------------------------------------------------
(setq default-terminal-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq default-file-name-coding-system 'utf-8)
(setq default-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")
;;-------------------------------------------------------------------------------
;; default setting
;;------------------------------------------------------------------------------
(setq default-major-mode 'org-mode)
(setq inhibit-startup-message t)

(auto-fill-mode t)
(setq default-fill-column 80)
(column-number-mode t)
(global-linum-mode -1)
(setq auto-image-file-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil) ; stop mixed tab and spaces

(ido-mode t)
(ido-vertical-mode 1)

;(nav)
; 括号自动配对，与ruby-electric功能冲突，设置成nil仍然关不掉
;; (electric-pair-mode t) 
(recentf-mode t)
(delete-selection-mode t)
(scroll-bar-mode -1)
(blink-cursor-mode t)
;; (show-paren-mode t)

(set-fringe-style -1)
(tooltip-mode -1)
;(menu-bar-mode -1)
(tool-bar-mode -1)

(setq suggest-key-bindings 1)
(setq x-select-enable-clipboard t)

;; kill line and the blank with a single C-k
(setq kill-whole-line t)
(pending-delete-mode t)

; auto-reload files that have been changed outside emacs
(global-auto-revert-mode t)
(global-visual-line-mode 1)

;-------------------------------------------------------------------------------
;; cua-mode
(setq cua-enable-cua-keys nil) 
(cua-mode 1) 

;; fullscreen
(setq ns-use-native-fullscreen nil)


 ;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Enable copy and pasting from clipboard
 (setq x-select-enable-clipboard t)

;; To get rid of Weird color escape sequences in Emacs.
;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)


(set-cursor-color "red")
 
(setq default-frame-alist
      '((cursor-color . "red")))

(setq search-highlight t)
(transient-mark-mode t)


;; (global-page-break-lines-mode t)

;; turn off ring bell and flash a black square block
(setq visible-bell t)

;; use srgb color
(setq ns-use-srgb-colorspace t)

;; toggle-debug-on-error
(setq debug-on-error t)



;; change default initial buffer
(setq initial-scratch-message "")
(setq initial-major-mode 'org-mode)

;; enable narrow-to-region
(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


;; fore dired mode to display details
(setq dired-hide-details-hide-information-lines nil)
(setq dired-hide-details-hide-symlink-targets nil)
(provide 'general-setting)
