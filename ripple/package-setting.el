;;-------------------------------------------------------------------------------
;; change a repository for elpa
;;------------------------------------------------------------------------------

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
;;       '(
;;         (:name yaml-mode 
;;                :type git
;;                :url "http://github.com/yoshiki/yaml-mode.git"
;;                :features yaml-mode
;;                :after (lambda () (yaml-mode-hook)))
;; 	))


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
				 nxhtml
				 org-blog
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
				 itunes
				 skype
				 autopair
				 textmate
				 emacs-w3m
				 twittering-mode
;				 yasnippet
				 yari
				 zencoding-mode
				 )
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync ripple-packages)

(provide 'package-setting)
