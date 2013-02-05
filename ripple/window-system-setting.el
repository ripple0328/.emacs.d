;;------------------------------------------------------------------------------
;; window system setting
;;------------------------------------------------------------------------------

(print-log " we are in window system")


(tool-bar-mode -1)
(menu-bar-mode t)
;; font setting
(set-face-attribute 'default nil :font "monaco")

(provide 'window-system-setting)
