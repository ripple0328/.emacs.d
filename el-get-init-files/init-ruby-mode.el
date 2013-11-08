(autoload 'ruby-mode "ruby-mode" nil t)
(setq ruby-use-encoding-map nil)

(define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key ruby-mode-map (kbd "C-M-h") 'backward-kill-word)
(define-key 'help-command (kbd "S-r") 'ri)

(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-hook 'ruby-mode-hook '(lambda ()
			     (setq ruby-deep-arglist t)
			     (setq ruby-deep-indent-paren nil)
			     (setq c-tab-always-indent nil)
			     (require 'inf-ruby)
			     (require 'ruby-compilation)
			     ))

(electric-pair-mode -1)
;; (getenv "GEM_PATH")											
