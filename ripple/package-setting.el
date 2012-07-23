;;-------------------------------------------------------------------------------
;; change a repository for elpa
;;------------------------------------------------------------------------------
(print-log "loading packages setting")

(print-log "setting elpa repository")
(require 'package)
(add-to-list 'package-archives
						 '("tromey" . "http://tromey.com/elpa/") t)

(add-to-list 'package-archives
						 '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;;------------------------------------------------------------------------------
;; check and install el-get
;;------------------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/el-get/el-get") 

(print-log "checking el-get installation")
(unless 
    (require 'el-get nil t) 
  (with-current-buffer 
      (url-retrieve-synchronously "https://raw.github.com/dimitri/el-get/master/el-get-install.el") 
    (goto-char (point-max)) 
    (eval-print-last-sexp)))

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
(setq ripple-packages
      (append
       '(
				 anything
				 auto-complete
				 auto-complete-css
				 auto-complete-emacs-lisp
				 auto-complete-extension
				 auto-complete-ruby
				 auto-complete-yasnippet
				 babel
				 coffee-mode
				 dired+
				 el-get
				 emacschrome
				 emacsserver
				 flymake-ruby
 				 haml-mode
				 inf-ruby
				 js2-mode
				 json
				 magit
				 mmm-mode
				 nav
				 org-html5presentation
				 package
				 rails-el
				 rdebug
				 ri-emacs
				 rinari
				 rspec-mode
				 ruby-block
				 ruby-compilation
				 ruby-electric
				 ruby-end
				 ruby-mode
				 ruby-test
				 rvm
				 scss-mode
				 xcode
				 autopair
				 textmate
				 emacs-w3m
				 twittering-mode
				 yasnippet
				 switch-window
				 yari
				 zencoding-mode
				 )
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync ripple-packages)

(provide 'package-setting)
