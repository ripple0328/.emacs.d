;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          Emacs configuration                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Filename:               init.el
;; Copyright (c) 2012:     qingbo
;; Version:                1.0
;; Author:                 qingbo<ripple0328@rubyer.info>
;; Created:                July 6 2012
;;
;; Description:            此文件用于emacs的初始化配置
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; 如果server没起来，先启动个server
(require 'server)
(unless (server-running-p)
  (server-start))

;; 如果找不到server就试试这个
(setq server-socket-dir (format "/tmp/emacs%d" (user-uid)))


(defvar emacs-dir (file-name-directory load-file-name)
	"The root dir of emacs configuration")

(defvar ripple-dir (concat emacs-dir "ripple/")
	"Customerized configration dir")

;; daemon下默认路径会是/
(cd (expand-file-name "~/"))

(add-to-list 'load-path ripple-dir)
(add-to-list 'load-path "~/.emacs.d/el-get-to-submit")

(message  "*** loading custom function ***")
(require 'custom-function)
(print-log (concat "Hi " (getenv "USER")))


(require 'personal-info)
(require 'file-location)
(require 'package-setting)
(require 'general-setting)
(require 'theme-setting)
(require 'org-setting)
(require 'tags-setting)

(when (eq system-type 'darwin)
	(require 'osx-setting))

(if window-system
		(require 'window-system-setting)
		(require 'term-setting))

(print-log "Emacs is ready to use")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/temp/temp.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
