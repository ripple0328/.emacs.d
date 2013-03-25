;; packages not in repo setting 

;; dash-at-point
;;------------------------------------------------------------------------------
(defvar dash-path (concat emacs-dir "el-get-to-submit/dash-at-point/"))
(add-to-list 'load-path dash-path)
(autoload 'dash-at-point "dash-at-point"
          "Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)
(provide 'package-not-in-repo)
