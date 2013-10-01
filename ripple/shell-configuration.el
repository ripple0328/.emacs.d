(setq explicit-shell-file-name "/bin/zsh")
(setq shell-file-name "zsh")
(setenv "SHELL" shell-file-name)
(global-set-key "\C-cs" 'shell)

;; removing ^M character
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
(provide 'shell-configuration)
