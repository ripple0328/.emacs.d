(setq shell-file-name (car (last (split-string (getenv "SHELL") "/"))))
(setq explicit-shell-file-name (getenv "SHELL"))
(setenv "TERM" "xterm-256color")
(setenv "SHELL" shell-file-name)
(global-set-key "\C-cs" 'shell)

;; removing ^M character
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
(provide 'shell-configuration)
