(add-hook 'prog-mode-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'cperl-mode-hook 'perl-mode-hook)
              (ggtags-mode))))
(subword-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(provide 'program-setting)
