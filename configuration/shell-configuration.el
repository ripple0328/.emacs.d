(defun find-shell-init-file ()
  "Edit the shell init file in another window."
  (interactive)
  (let* ((shell (car (reverse (split-string (getenv "SHELL") "/"))))
         (shell-init-file (cond
                           ((string-equal "zsh" shell) ".zshrc")
                           ((string-equal "bash" shell) ".bashrc")
                           (t (error "Unknown shell")))))
    (find-file-other-window (expand-file-name shell-init-file (getenv "HOME")))))


(setq explicit-shell-file-name (getenv "SHELL"))
(setq shell-file-name (car (last (split-string (getenv "SHELL") "/"))))
(setq explicit-zsh-args '("--login"))
(setenv "TERM" "xterm-256color")
(setenv "SHELL" shell-file-name)
(global-set-key "\C-cs" 'shell)
(global-set-key (kbd "C-`") 'shell-or-last-buffer)

;; removing ^M character
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
(provide 'shell-configuration)
