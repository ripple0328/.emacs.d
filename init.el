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

;;; Code:

(defvar emacs-dir "~/.emacs.d/"
	"The root dir of emacs configuration")
(defvar ripple-dir (concat emacs-dir "configuration/")
	"Customerized configration dir")
(add-to-list 'load-path ripple-dir)

;; load custom setting and package
(require 'basic-functions)
(when (eq system-type 'darwin)
	(require 'osx-setting))
(if window-system
		(require 'window-system-setting)
		(require 'term-setting))
(require 'path-and-location)
(require 'backup-file-setting)
(require 'personal-info)
(require 'package-setting)
(require 'general-setting)
(require 'edit-function)
(require 'theme-setting)
(require 'shell-configuration)
(require 'org-setting)
(require 'mu4e-setting)
(require 'key-binding-setting)

(print-log "Emacs is ready to use")
;;; init.el ends here
