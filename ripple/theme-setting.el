;;------------------------------------------------------------------------------
;; theme setting
;;------------------------------------------------------------------------------

(print-log "loading theme setting")

;; 字体设置会在emacsclient模式全都失效
(load-theme 'tango-dark)

;; 只有这个在daemon模式下面可以设置x的字体
 (add-to-list 'default-frame-alist '(font . "mocano-18"))

;;menu-bar的设置
(defun set-frame-menu-bar-lines (frame)
  (let ((want-menu (memq(framep frame) '(x w32 ns))))
    (set-frame-parameter frame 'menu-bar-lines (if want-menu 1 0))))
(add-hook 'after-make-frame-functions 'set-frame-menu-bar-lines)

(provide 'theme-setting)
