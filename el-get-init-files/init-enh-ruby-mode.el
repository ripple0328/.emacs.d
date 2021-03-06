(setq ruby-use-encoding-map nil)

(define-key enh-ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key enh-ruby-mode-map (kbd "C-M-h") 'backward-kill-word)
;; (define-key 'help-command (kbd "S-r") 'ri)

(add-to-list 'auto-mode-alist '("Capfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-hook 'enh-ruby-mode-hook '(lambda ()
			     (setq ruby-deep-arglist t)
			     (setq ruby-deep-indent-paren nil)
			     (setq c-tab-always-indent nil)
			     ;; (require 'inf-ruby)
			     ;; (require 'ruby-compilation)
			     ))

;; (getenv "GEM_PATH")
(add-hook 'enh-ruby-mode-hook     (lambda () 
                                    (rvm-activate-corresponding-ruby)
                                    (rubocop-mode)
                                    (flycheck-mode)
                                    ;; (robe-mode)
                                    ))

(define-key enh-ruby-mode-map (kbd "C-c g") 'ruby-compilation-this-buffer)

;; check english spell


(rvm-activate-corresponding-ruby)
