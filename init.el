;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          Emacs configuration                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Filename:               init.el                                            ;;
;; Copyright (c) 2012:     qingbo zhang																				;;
;; Version:                1.1																								;;
;; Author:                 qingbo<ripple0328@gmail.com> 											;;
;; Created:                July 6 2012																				;;
;; Updated:                August 4 2013																			;;
;; Description:            initialize configuration                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; initialize load path
;; TODO not compatible
(defvar emacs-dir "~/.emacs.d/"
	"The root dir of emacs configuration")
(defvar ripple-dir (concat emacs-dir "configuration/")
	"Customerized configration dir")
(add-to-list 'load-path ripple-dir)

;; load custom setting and package
(require 'functions)
(require 'path-and-location)
(require 'backup-file-setting)
(require 'personal-info)
(require 'general-setting)
(require 'package-setting)
(require 'theme-setting)
(require 'org-setting)
(require 'tags-setting)
(require 'edit-function)
(require 'shell-configuration)
(require 'hooks)
(when (eq system-type 'darwin)
	(require 'osx-setting))

(if window-system
		(require 'window-system-setting)
		(require 'term-setting))

(print-log "Emacs is ready to use")
