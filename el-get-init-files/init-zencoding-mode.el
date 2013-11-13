
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes
(global-set-key (kbd "C-c C-j") 'zencoding-expand-line)
