;;; Package --- package list
;; change a repository for elpa
;;------------------------------------------------------------------------------
(print-log "loading packages setting")

(print-log "setting elpa repository")

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("tromey" . "http://tromey.com/elpa/")
                         ))
(package-initialize)


;;------------------------------------------------------------------------------
;; check and install el-get
;;------------------------------------------------------------------------------
(print-log "checking el-get installation")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))
;;add its initialization code to a file named init-<package>.el with <package> replaced with the package name
(add-to-list 'el-get-recipe-path  (concat emacs-dir "el-get-recipes/"))

(print-log el-get-user-package-directory)
;;------------------------------------------------------------------------------
;; packages sources
;;------------------------------------------------------------------------------
;rcodetools recipe has problem, temporary fixed it
;; (require 'rcodetools)

(setq ripple-packages
			(append
			 '(
         ;; env
         exec-path-from-shell
				 ;; pkg-info ;; s,epl
         color-theme
			   powerline
         ;; maxframe
         
         ;; document
			   babel

         ;; edit
         switch-window         

         ;; services
         ;; google-maps ;; some problem
         google-contacts ;; oauth2,use `flet' is an obsolete macro
         google-translate
			   weibo.emacs
			   dash-at-point         
			   twittering-mode

         ;; facilities
         emacs-w3m
				 ;; adaptive-wrap

         ;; code
         yasnippet
         flycheck ;; s dash cl-lib f pkg-info

         expand-region         
				 ace-jump-mode
         multiple-cursors
         helm
         ag
         
         enclose
         smartparens
         rainbow-delimiters
         
         ;; vcs and project ;;
         magit ;; git-modes,cl-lib
				 git-commit-mode
         textmate
         
         grizzl
         ;; flx
				 projectile ;; dash,s,pkg-info
         ;; eproject
         project-explorer;;helm
         ;; nav

         ;; code 
         highlight-indentation
         ;; auto-complete ;; popup, fuzzy

         ;; code language support
         ;; html
			   haml-mode
         zencoding-mode
         ;; css
			   scss-mode
         rainbow-mode

         rspec-mode
         
         ;; ruby
         rvm ;; essetiall if you use rvm to manage ruby
				 enh-ruby-mode
				 robe-mode ;; inf-ruby
         rubocop ;; need rubocop gem installed

         ;; rails
         rinari
         ;; js
         coffee-mode
         web-mode
				 ;; skewer-mode ;; js2-mode,simple-httpd
         ac-js2;;  skewer-mode,js2-mode,auto-complete

         ;; tags
         
         
			   ;; dired+
			   ;; json
			   ;; ruby-block
			   ;; ruby-compilation
			   ;; ruby-electric

			   ;; ruby-test-mode
				 ;; ruby-tools

			   ;; etags-select
			   ;; ;; etags-extension
			   ;; slime
			   ;; ctags
			   ;; rcodetools
         ;; helm
			   ;; emacschrome
			   ;; emacs-http-server 
			   ;; auto-complete-css
			   ;; auto-complete-emacs-lisp
			   ;; auto-complete-extension
			   ;; auto-complete-etags
			   ;; auto-complete-clang
			   ;; auto-complete-yasnippet
			   ;; rails-el 
			   ;; yari

			   ;; gnuplot-mode
			   ;; ;; magithub

			   ;; rvm
				 ;; multi-term
				 ;; recentf-ext
				 ;; tabbar
				 ;; idle-highlight-mode
				 ;; findr
				 ;; drag-stuff
				 ;; calfw
				 ;; ag
			   )
(mapcar 'el-get-source-name el-get-sources)))
(el-get-cleanup ripple-packages)
(el-get 'sync ripple-packages)

(provide 'package-setting)

;;; package-setting.el ends here
