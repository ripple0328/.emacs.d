(add-hook 'prog-mode-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'cperl-mode-hook 'perl-mode-hook 'ruby-mode-hook 'enh-ruby-mode)
              (ggtags-mode))
            (yas-minor-mode)
            (flyspell-prog-mode)
            (smartscan-mode)
            (subword-mode)
            (global-linum-mode)
            ))
;; database
(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

;; database connection configuration
(setq sql-connection-alist
      '((local (sql-product 'mysql)
                  (sql-server "localhost")
                  (sql-user "root")
                  (sql-database "PSeeker"))
        (sf2 (sql-product 'mysql)
                  (sql-server "pseeker.sf2.vpc.realestate.com.au")
                  (sql-user "root")
                  (sql-password "s3cr3t")
                  (sql-database "PSeeker"))))

(defun my-sql-connect (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-connect connection))
(defun my-sql-local ()
  (interactive)
  (my-sql-connect 'mysql 'local))

(defun my-sql-sf2 ()
  (interactive)
  (my-sql-connect 'mysql 'sf2))

(provide 'program-setting)
