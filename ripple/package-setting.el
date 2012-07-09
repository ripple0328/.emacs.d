;;-------------------------------------------------------------------------------
;; change a repository for elpa
;;------------------------------------------------------------------------------

(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
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

(setq el-get-sources 
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
        css-mode
        dired+
        el-get
        emacschrome
        emacsserver
        flymake-ruby
        inf-ruby
        magit
        o-blog
        package
        rdebug
        ri-emacs
        rinari
        rspec-mode
        ruby-block
        ruby-comilation
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
        yasnippet
        zencoding-mode
        ))
(el-get 'wait)


(provide 'package-setting)
