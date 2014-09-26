(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(setq projectile-enable-caching t)

;; switch completion system
;; Press Command-p for fuzzy find in project
(setq projectile-completion-system 'grizzl)
;; (global-set-key (kbd "s-p") 'projectile-find-file)
;;  ;; Press Command-b for fuzzy switch buffer
;; (global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(setq '(:eval (format " Proj[%s]" (projectile-project-name))))

(setq projectile-enable-idle-timer t)
(add-hook 'projectile-idle-timer-hook 'projectile-regenerate-tags)
