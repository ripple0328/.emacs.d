;;------------------------------------------------------------------------------
;; window system setting
;;------------------------------------------------------------------------------
(print-log " we are in window system")

(menu-bar-mode t)
;; font setting
(set-default-font "Inconsolata for Power-14")
(set-face-attribute 'default nil :font "Inconsolata for Power") 

;; font setting will failed when start emacs with daemon mode
;; below will setting for daemon mode
(add-to-list 'default-frame-alist '(font . "Inconsolata for Power-14"))
(when window-system
  (set-frame-size (selected-frame) 140 40)
  (set-frame-position (selected-frame) 300 0)
  )

;; emacsosx don't support this only brew install emacs can open this
;; (toggle-frame-fullscreen)

(provide 'window-system-setting)
