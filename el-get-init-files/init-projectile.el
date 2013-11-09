(projectile-global-mode)
(setq projectile-enable-caching t)

;; switch completion system
;; (setq projectile-completion-system 'grizzl)
 ;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
 ;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)
