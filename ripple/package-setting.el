;; change a repository for elpa
(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(package-initialize)

;; check and install el-get

(add-to-list 'load-path "~/.emacs.d/el-get/el-get") 

(unless 
    (require 'el-get nil t) 
  (with-current-buffer 
      (url-retrieve-synchronously "https://raw.github.com/dimitri/el-get/master/el-get-install.el") 
    (goto-char (point-max)) 

    (eval-print-last-sexp)))

(el-get 'sync)


(provide 'package-setting)
