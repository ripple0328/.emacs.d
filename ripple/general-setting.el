;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  general setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(print-log "loading general setting")
;;------------------------------------------------------------------------------
;; user setting
;;------------------------------------------------------------------------------

(setq user-full-name "Qingbo ZHANG")
(setq user-mail-address "ripple0328@gmail.com")

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
;; default setting
;;------------------------------------------------------------------------------

(setq default-major-mode 'org-mode)
(setq inhibit-startup-message t)

(auto-fill-mode t)
(setq default-fill-column 80)
;; (column-number-mode t)
;; (global-linum-mode t)
(setq auto-image-file-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files t)
(setq auto-save-default t)
(setq default-tab-width 2)
(setq default-indent-tabs-mode nil) ; stop mixed tab and spaces

(ido-mode t)
;(nav)																		
(electric-pair-mode t)
(recentf-mode t)
(delete-selection-mode t)
(scroll-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)

(set-fringe-style -1)
(tooltip-mode -1)
;(menu-bar-mode -1)
;(tool-bar-mode -1)

(setq suggest-key-bindings 1)
(setq x-select-enable-clipboard t)

;; kill line and the blank with a single C-k
(setq kill-whole-line t)

; auto-reload files that have been changed outside emacs
(global-auto-revert-mode t)

;; rinari
(setq global-rinari-mode t)
;-------------------------------------------------------------------------------
(provide 'general-setting)
