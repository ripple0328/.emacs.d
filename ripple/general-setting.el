;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  general setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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
(setq display-time-use-mail-icon t)

(setq time-stamp-active t)
(setq time-stamp-format "%:u %04y/%02m/%02d %02H02M02S")
(add-hook 'write-file-hooks 'time-stamp)

;;-------------------------------------------------------------------------------
;; default setting
;;------------------------------------------------------------------------------

(setq default-major-mode 'org-mode)
(setq inhibit-startup-message t)

(setq auto-fill-mode t)
(setq default-fill-column 80)
(column-number-mode t)

(setq auto-image-file-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
     
(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)

(set-fringe-style -1)
(tooltip-mode -1)

;;-------------------------------------------------------------------------------
;; 可执行路径设置,一些自己安装的软件会放在下面目录下面
;; 下面设置可以帮助emacs找到它们
;;------------------------------------------------------------------------------

(push "/usr/local/bin" exec-path)

;-------------------------------------------------------------------------------
(provide 'general-setting)
