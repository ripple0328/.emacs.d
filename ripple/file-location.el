
;; 设定一些文件的存储位置.
(print-log "setting data file location")
(setq bookmark-default-file "~/.emacs.d/.bookmark")
(setq desktop-base-file-name "~/.emacs.d/.desktop")
(setq desktop-base-lock-name "~/.emacs.d/.desktop.lock")
(setq save-place-file "~/.emacs.d/.emacs-places")
(setq smex-save-file "~/.emacs.d/.smex-items")
(setq mail-personal-alias-file "~/.emacs.d/.mailrc")
(setq recentf-save-file "~/.emacs.d/.recentf")
(setq diary-file "~/.emacs.d/diary")

(provide 'file-location)
