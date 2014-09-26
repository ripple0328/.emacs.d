(add-hook 'prog-mode-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'cperl-mode-hook)
              (ggtags-mode t))))
(provide 'program-setting)
