;; 设定一些文件的存储位置和路径
(print-log "setting data file location")

;; path setting

;; set path
(setenv "PATH"
			 (concat
				(getenv "PATH")))

;; daemon下默认路径会是/
(cd (expand-file-name "~/"))
;; 没有提交到el-get的自己装的包

(add-to-list 'load-path (concat emacs-dir "el-get-to-submit"))


; el-get relative 
(add-to-list 'load-path (concat emacs-dir "el-get/el-get"))
(setq el-get-dir (concat emacs-dir "el-get"))
(setq el-get-user-package-directory (concat emacs-dir "el-get-init-files/"))
(add-to-list 'load-path (concat emacs-dir "el-get-init-files/"))

; emacs temporary directory
(defvar user-tmp "~/tmp"
	"users temporary directory")
(mkdir user-tmp)

; backup setting
(setq make-backup-files t)
(setq auto-save-default t)

;; file location setting
(setq user-emacs-directory emacs-dir)
(setq auto-save-list-file-prefix (concat emacs-dir "auto-save-list"))
(setq bookmark-default-file (concat emacs-dir ".bookmark"))
(setq desktop-base-file-name (concat emacs-dir ".desktop"))
(setq desktop-base-lock-name (concat emacs-dir ".desktop.lock"))
(setq save-place-file (concat emacs-dir ".emacs-places"))
(setq smex-save-file (concat emacs-dir ".smex-items"))
(setq mail-personal-alias-file (concat emacs-dir ".mailrc"))
(setq recentf-save-file  (concat emacs-dir ".recentf"))
(setq diary-file  (concat emacs-dir "diary"))

;; org
(setq org-default-notes-file (concat emacs-dir "notes.org"))

(provide 'path-and-location)
