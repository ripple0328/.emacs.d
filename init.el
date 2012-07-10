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
	"Customrized configration dir")

(add-to-list 'load-path ripple-dir)

(message "Hi %s, we are loading setting" (getenv "USER"))

(message "Check packages setting...")
(require 'package-setting)
(require 'general-setting)
(require 'theme-setting)
(require 'org-setting)

(when (eq system-type 'darwin)
	(message "you are using osx system, use specific setting...")
	(require 'osx-setting))
