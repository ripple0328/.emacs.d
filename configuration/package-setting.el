;;; mu4e --- emacs email client
;;; Commentary:
;;; Code:
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
(when (not package-archive-contents)
  (package-refresh-contents))


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
;;rcodetools recipe has problem, temporary fixed it
;; (require 'rcodetools)

(setq ripple-packages
      (append
       '(
         ;; env
         exec-path-from-shell
         smex
         dired+
         bash-completion
         ;; pkg-info ;; s,epl
         color-theme
         powerline
         ;; smart-mode-line
         fancy-narrow
         smooth-scrolling         
         ;; document
         babel
         org-mode

         ;; edit
         ;; switch-window
         workgroups2

         ;; services
         ;; google-maps ;; some problem
         
         google-contacts ;; oauth2,use `flet' is an obsolete macro
         google-translate
         weibo.emacs
         dash-at-point
         twittering-mode

         ;; facilities
         emacs-w3m ;; browser
         mu4e ;; email client

         ;; adaptive-wrap

         ;; code
         yasnippet
         flycheck ;; s dash cl-lib f pkg-info
         expand-region
         ace-jump-mode
         multiple-cursors
         helm
         ag
         ack-and-a-half
         undo-tree
         enclose
         smartparens
         rainbow-delimiters
         quickrun
         ;; shell-pop
         ;; vcs and project ;;
         magit ;; git-modes,cl-lib
         git-commit-mode
         gist ;;gh tabulated-list
         textmate
         
         grizzl
         flx
         projectile-rails ;; dash,s,pkg-info
         ;; eproject
         es-windows
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
         ;; helm-css-scss
         rainbow-mode
         ;; yaml
         yaml-mode
         
         ;; ruby
         rvm ;; essetiall if you use rvm to manage ruby
         enh-ruby-mode
         ruby-compilation
         robe-mode ;; inf-ruby
         bundler
         rubocop ;; need rubocop gem installed
         rspec-mode
         feature-mode
         yari

         ;; rails
         ;; rinari
         ;; js
         coffee-mode
         web-mode
         ;; skewer-mode ;; js2-mode,simple-httpd
         ac-js2;;  skewer-mode,js2-mode,auto-complete
         json-mode;; json-reformat
         
         ;; tags
         ;; ripper-tags
         
         ;; dired+
         ;; json
         ;; ruby-block
         ;; ruby-electric

         ;; ruby-test-mode
         ;; ruby-tools

         ;; etags-select
         ;; ;; etags-extension
         ;; slime
         ;; ctags

         ;; rcodetools
         ;; emacschrome
         ;; emacs-http-server 
         ;; auto-complete-css
         ;; auto-complete-emacs-lisp
         ;; auto-complete-extension
         ;; auto-complete-etags
         ;; auto-complete-clang
         ;; auto-complete-yasnippet
         ;; rails-el 


         ;; gnuplot-mode
         ;; ;; magithub

         ;; multi-term
         ;; recentf-ext
         ;; tabbar
         ;; idle-highlight-mode
         ;; findr
         ;; drag-stuff
         ;; calfw
         )
       (mapcar 'el-get-source-name el-get-sources)))
(el-get-cleanup ripple-packages)
(el-get 'sync ripple-packages)

(provide 'package-setting)

;;; package-setting.el ends here
