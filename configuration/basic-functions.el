;;; basic-msg-function  --- 
;;; Commentary:
;;; Code:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  custom defined functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; print format log
(message  "*** loading custom function ***")
(defun print-log (msg)
	"pass in a msg, print it in format"
	(let
			((splash-forty-dash "----------------------------------------")
			 (splash-with-newline "----------------------------------------\n")
			 (format-msg "*** %s...  ***"))
		(setq output-msg (concat splash-forty-dash splash-with-newline format-msg))
		(message output-msg msg)))
(print-log (concat "Hi " (getenv "USER")))


(defun mkdir (dir)
	"test exist and make directory"
	(unless (file-exists-p dir)
		(make-directory dir)))

(provide 'basic-functions)
