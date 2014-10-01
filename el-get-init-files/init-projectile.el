(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
(setq projectile-enable-idle-timer t)
(add-hook 'projectile-idle-timer-hook 'projectile-regenerate-tags)

