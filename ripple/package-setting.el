;-------------------------------------------------------------------------------
;; change a repository for elpa
;;------------------------------------------------------------------------------
(print-log "loading packages setting")

(print-log "setting elpa repository")

(require 'package)
;(add-to-list 'package-archives	 '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives	 '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;;------------------------------------------------------------------------------
;; check and install el-get
;;------------------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/el-get/el-get") 

(print-log "checking el-get installation")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

;;add its initialization code to a file named init-<package>.el with <package> replaced with the package name
(setq el-get-user-package-diretory "~/.emacs.d/el-get-init-files/")
(add-to-list  'el-get-recipe-path  "~/.emacs.d/recipes/")
;;------------------------------------------------------------------------------
;; packages sources
;;------------------------------------------------------------------------------

;; (setq el-get-sources 
;; '((:name magit :after (lambda () (global-set-key (kbd "C-x C-z") 'magit-status)))
;; (:name asciidoc :type elpa :after (lambda () (autoload 'doc-mode "doc-mode" nil t) (add-to-list 'auto-mode-alist '("\\.adoc$" . doc-mode)) (add-hook 'doc-mode-hook '(lambda () (turn-on-auto-fill) (require 'asciidoc))))) 
;; (:name lisppaste :type elpa) 
;; (:name emacs-goodies-el :type apt-get))) 
;; (setq my-packages 
;; (append '
;; (cssh el-get switch-window vkill google-maps nxhtml xcscope yasnippet) 
;; (mapcar 'el-get-source-name el-get-sources))) (el-get 'sync my-packages)

(print-log "checking and installing package")
;rcodetools recipe has problem, temporary fixed it
(require 'rcodetools)
(setq el-get-sources
      '(
				babel
				coffee-mode
;				dired+
				el-get
				(:name flymake-ruby :after (progn
							     (add-hook 'ruby-mode-hook 'flymake-ruby-load)))
				haml-mode
				flymake
				js2-mode
				json
				magit
				package
				rinari
				rspec-mode
				ruby-block
				ruby-compilation								
				ruby-electric
				ruby-mode
				ruby-test

				autopair
				yasnippet
				switch-window
				google-translate
				weibo.emacs
				auto-dictionnary
				eproject
				etags-select
				etags-extension
				slime
				ctags
				rcodetools

				anything
				anything-etags
;				emacschrome
;				emacsserver 
				auto-complete
				auto-complete-css
				auto-complete-emacs-lisp
				auto-complete-extension
				auto-complete-etags
				(:name auto-complete-ruby :after  (progn
								    ;; make sure rcodetools is
								    ;; installed and available
								    ;; through (getenv "GEM_PATH")
								    (require 'auto-complete-ruby)
								    (ac-ruby-init)))
				auto-complete-clang
				auto-complete-yasnippet
;				ac-anything2
;				go-mode
;				google-maps
;				google-weather
				rails-el 
				rdebug
				ri-emacs
;				yari
;				zencoding-mode
				gnuplot-mode
;				magithub
;				mmm-mode
;				nav
;				org-html5presentation
;				wanderlust
;				matlab-mode 
				twittering-mode
;				auctex
;				rvm
				flymake-haml
				flymake-sass
				flymake-coffee
				inf-ruby
				emacs-w3m
				scss-mode
				))
(setq ripple-packages (mapcar 'el-get-source-name el-get-sources))

(el-get 'sync ripple-packages)

(provide 'package-setting)
