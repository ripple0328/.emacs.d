(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist
			'(("erb"    . "\\.erb\\'"))
			)
(defun web-mode-hook ()
  "Hooks for Web mode."
	(local-set-key (kbd "RET") 'newline-and-indent)
  ;; (setq web-mode-markup-indent-offset 2)
	;; 	(setq web-mode-css-indent-offset 2)
	)
(add-hook 'web-mode-hook  'web-mode-hook)
