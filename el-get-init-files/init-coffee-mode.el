(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))
(add-hook 'coffee-mode-hook '(lambda ()
														 (rinari-minor-mode t)))
