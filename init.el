;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          Emacs configuration                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Filename:               init.el
;; Copyright (c) 2012:     qingbo
;; Version:                1.0
;; Author:                 qingbo<ripple0328@gmail.com>
;; Created:                July 6 2012
;;
;; Description:            此文件用于emacs的初始化配置
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar emacs-dir (file-name-directory load-file-name)
	"The root dir of emacs configuration")

(defvar ripple-dir (concat emacs-dir "ripple/")
	"Customerized configration dir")

;; daemon下默认路径会是/
(cd (expand-file-name "~/"))

(add-to-list 'load-path ripple-dir)

(message  "*** loading custom function ***")
(require 'custom-function)
(print-log (concat "Hi " (getenv "USER")))

(require 'package-setting)
(require 'general-setting)
(require 'theme-setting)
(require 'org-setting)

(when (eq system-type 'darwin)
	(require 'osx-setting))

(if window-system
		(require 'window-system-setting)
		(require 'term-setting))

(print-log "Emacs is ready to use")
