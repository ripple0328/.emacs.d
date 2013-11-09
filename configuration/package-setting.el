;-------------------------------------------------------------------------------
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
(require 'rcodetools)

; for local sources
(setq el-get-sources
      '(
	(:name flymake-ruby :after (progn
				     (add-hook 'ruby-mode-hook 'flymake-ruby-load)))
	(:name auto-complete-ruby :after  (progn
					    ;; make sure rcodetools is
					    ;; installed and available
					    ;; through (getenv "GEM_PATH")
					    (require 'auto-complete-ruby)
					    (ac-ruby-init)))
	google-translate
	))

(setq ripple-packages
			(append
			 '(
			   babel
			   coffee-mode
			   dired+
			   haml-mode
			   flymake
			   js2-mode
			   json
				 ;; swank-js
			   magit
				 git-commit-mode
			   package
				 rinari
			   rspec-mode
			   ruby-block
         inf-ruby
			   ruby-compilation
			   ruby-electric
			   ruby-mode
				 enh-ruby-mode
			   ruby-test-mode
				 ruby-tools
				 robe-mode
				 highlight-indentation
				 dash
				 rubocop
				 simple-httpd
				 textmate
			   yasnippet
			   switch-window
			   weibo.emacs
				 smartparens
			   eproject
			   etags-select
			   ;; etags-extension
			   slime
			   ctags
			   rcodetools
			   anything
			   ;; anything-etags
			   emacschrome
			   emacs-http-server 
			   auto-complete
			   auto-complete-css
			   auto-complete-emacs-lisp
			   auto-complete-extension
			   auto-complete-etags
			   auto-complete-clang
			   auto-complete-yasnippet
			   rails-el 
			   yari
			   zencoding-mode
			   gnuplot-mode
			   ;; magithub
			   nav
			   ;; twittering-mode
			   rvm
			   flymake-haml
			   flymake-sass
			   flymake-coffee
			   emacs-w3m
			   scss-mode
			   color-theme
			   powerline
			   dash-at-point
				 skewer-mode
				 web-mode
				 ace-jump-mode
				 exec-path-from-shell
				 adaptive-wrap
				 wrap-region
         expand-region
				 maxframe
				 multi-term
				 es-lib
				 grizzl
				 s
				 project-explorer
				 projectile
				 pkg-info
				 recentf-ext
				 tabbar
				 rainbow-mode
				 rainbow-delimiters
				 highlight-indentation
				 idle-highlight-mode
				 findr
				 enclose
				 drag-stuff
				 calfw
				 ac-js2
				 ag
				 popup
				 multiple-cursors
         google-maps
         google-contacts
         color-theme-solarized
			   )
(mapcar 'el-get-source-name el-get-sources)))
(el-get-cleanup ripple-packages)
(el-get 'sync ripple-packages)

(provide 'package-setting)
