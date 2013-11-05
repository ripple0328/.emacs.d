;;------------------------------------------------------------------------------
;; window system setting
;;------------------------------------------------------------------------------

(print-log " we are in window system")

(menu-bar-mode t)
;; font setting
(set-default-font "Inconsolata for Power-14")
(set-face-attribute 'default nil :font "Inconsolata for Power") 

;; 字体设置会在emacsclient模式全都失效
;; 只有这个在daemon模式下面可以设置x的字体
(add-to-list 'default-frame-alist '(font . "Inconsolata for Power-14"))


(toggle-frame-fullscreen);

(provide 'window-system-setting)
