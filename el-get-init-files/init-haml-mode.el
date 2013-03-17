(add-to-list 'auto-mode-alist '("\\.haml\\'" . haml-mode))
(add-hook 'haml-mode-hook '(lambda ()
														 (rinari-minor-mode t)))
