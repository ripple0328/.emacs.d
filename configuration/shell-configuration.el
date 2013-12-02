(setq shell-file-name (getenv "SHELL"))
(setq explicit-shell-file-name (concat "/bin/" (getenv "SHELL")))
(global-set-key "\C-cs" 'shell)

;; removing ^M character
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
(provide 'shell-configuration)
