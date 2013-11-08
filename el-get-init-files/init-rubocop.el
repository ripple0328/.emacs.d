(add-hook 'ruby-mode-hook 'rubocop-mode)
(add-hook 'enh-ruby-mode 'rubocop-mode)
(global-set-key (kbd "C-c C-r p") 'rubocop-check-project)
