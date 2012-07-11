;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  custom defined functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; print format log
(defun print-log (msg)
	"pass in a msg, print it in format"
	(let
	    (
	     (splash-forty-dash "----------------------------------------")
	     (splash-with-newline "----------------------------------------\n")
	     (format-msg "***  %s...  ***")
	     )
	     (setq output-msg (concat splash-forty-dash splash-with-newline format-msg))
	     (message output-msg msg)))
				

(provide 'custom-function)
