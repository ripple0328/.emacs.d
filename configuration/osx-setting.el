;;; mu4e --- emacs email client
;;; Commentary:
;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                         mac osx system setting                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(print-log "we are using osx system with specific setting")
;;-------------------------------------------------------------------------------
;; path setting 
;;-------------------------------------------------------------------------------

;;------------------------------------------------------------------------------
;; add specific path to exec-path
;;------------------------------------------------------------------------------

;; (let (osx-paths)
;; 	(dolist (path '("/usr/local/bin" "/opt/local/bin" "/opt/local/sbin")
;; 								(setenv "PATH" (concat osx-paths (getenv "PATH"))))
;;     (push path exec-path)
;;     (setq osx-paths (concat (concat path ":") osx-paths))
;; 		(message "osx-path is== %s" osx-paths)))


;;------------------------------------------------------------------------------
;;  set path from shell path variable
;;------------------------------------------------------------------------------

;; (defun set-exec-path-from-shell-path ()
;;   (let ((path-from-shell 
;;       (replace-regexp-in-string "[[:space:]\n]*$" "" 
;;         (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
;;     (setenv "PATH" path-from-shell)
;;     (setq exec-path (split-string path-from-shell path-separator))))


;; (set-exec-path-from-shell-path)

;;------------------------------------------------------------------------------
;;  modify modifier key
;;------------------------------------------------------------------------------

;; TODO adjust key binding systemly
(setq mac-option-modifier 'meta)
(setq mac-right-command-modifier 'super)
;; (setq mac-control-modifier 'ctrl)


;; fullscreen
;(set-frame-parameter nil 'fullscreen 'fullboth)

;-------------------------------------------------------------------------------
(provide 'osx-setting)		 


	
	
	
