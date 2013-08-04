(global-set-key "\C-cd" 'dash-at-point)
;; (add-to-list 'dash-at-point-mode-alist
;; 	     '(
;; 	       (c-mode . "c")
;; 	      (coffee-mode . "coffee")
;; 	      (common-lisp-mode . "lisp")
;; 	      (css-mode . "css")
;; 	      (emacs-lisp-mode . "elisp")
;; 	      (erlang-mode . "erlang")
;; 	      (go-mode . "go")
;; 	      (haskell-mode . "haskell")
;; 	      (html-mode . "html")
;; 	      (java-mode . "java")
;; 	      (js2-mode . "javascript")
;; 	      (objc-mode . "iphoneos")
;; 	      (ruby-mode . "ruby")
;; 	      ))
(add-hook 'rinari-minor-mode-hook
          (lambda () (setq dash-at-point-docset "rails")))
