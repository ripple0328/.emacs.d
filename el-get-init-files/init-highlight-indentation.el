 (require 'highlight-indentation)
 (add-hook 'enh-ruby-mode-hook
           (lambda () (highlight-indentation-current-column-mode)))
 (add-hook 'ruby-mode-hook
           (lambda () (highlight-indentation-current-column-mode)))
 (add-hook 'coffee-mode-hook
           (lambda () (highlight-indentation-current-column-mode)))
 (add-hook 'haml-mode-hook
           (lambda () (highlight-indentation-current-column-mode)))
 (add-hook 'web-mode-hook
           (lambda () (highlight-indentation-current-column-mode)))
 (add-hook 'scss-mode-hook
           (lambda () (highlight-indentation-current-column-mode)))
 (add-hook 'lisp-mode-hook
           (lambda () (highlight-indentation-current-column-mode)))
