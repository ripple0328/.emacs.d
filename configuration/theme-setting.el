;;; mu4e --- emacs email client
;;; Commentary:
;;; Code:

;;------------------------------------------------------------------------------
;; theme setting
;;------------------------------------------------------------------------------
(print-log "loading theme setting")
;; setting of menu-bar
;; (defun set-frame-menu-bar-lines (frame)
;;   (let ((want-menu (memq(framep frame) '(x w32 ns))))
;;     (set-frame-parameter frame 'menu-bar-lines (if want-menu 1 0))))
;; (add-hook 'after-make-frame-functions 'set-frame-menu-bar-lines)

(defun prelude-frame-config (frame)
  "Custom behaviours for new frames."
  (if (eq system-type 'darwin)
      (with-selected-frame frame
        (if (display-graphic-p)
            (modify-frame-parameters frame '((menu-bar-lines . 1)))
          (modify-frame-parameters frame '((menu-bar-lines . 0)))))
    (menu-bar-mode -1)))
(add-hook 'after-make-frame-functions 'prelude-frame-config)


(provide 'theme-setting)
