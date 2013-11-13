(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(setq ace-jump-mode-submode-list
      '(ace-jump-word-mode              ;; the first one always map to : C-c SPC
        ace-jump-line-mode           ;; the third one always map to ：C-u C-u C-c SPC
        ace-jump-char-mode))              ;; the second one always map to: C-u C-c SPC            
