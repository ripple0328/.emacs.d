;;; mu4e --- emacs email client
;;; Commentary:
;;; Code:

;;------------------------------------------------------------------------------
;; window system setting
;;------------------------------------------------------------------------------
(print-log " we are in window system")

(menu-bar-mode t)

;; font setting
(set-default-font "Inconsolata-dz for Powerline-16")

;; font setting will failed when start emacs with daemon mode
;; below will setting for daemon mode
(add-to-list 'default-frame-alist '(font . "Inconsolata-dz for Powerline-16"))
(set-face-attribute 'default t :font "Inconsolata-dz for Powerline-16") 

(when window-system
  (set-frame-size (selected-frame) 160 40)
  (set-frame-position (selected-frame) 300 0)
  )

;; emacsosx don't support this only brew install emacs can open this
;; (toggle-frame-fullscreen)

(provide 'window-system-setting)
