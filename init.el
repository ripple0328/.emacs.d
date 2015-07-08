;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
(require 'shell-configuration)
(require 'program-setting)
(require 'org-setting)
(require 'mu4e-setting)
(require 'key-binding-setting)
(require 'abbrev-setting)

(print-log "Emacs is ready to use")
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (shell-toggle jsx-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
