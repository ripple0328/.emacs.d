(add-hook 'prog-mode-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'cperl-mode-hook 'perl-mode-hook)
              (ggtags-mode))))
(provide 'program-setting)
