;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                         mac osx system setting                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;-------------------------------------------------------------------------------
;; *unix setting include osx
;;-------------------------------------------------------------------------------

(let (osx-paths)
	(dolist (path '("usr/local/bin" "/opt/local/bin" "/opt/local/sbin")
								(setenv "PATH" (concat osx-paths (getenv "PATH"))))
		(push path exec-path)
		(setq osx-paths (concat (concat path ":") osx-paths))))

(setq mac-option-modifier 'super)
(setq mac-option-modifier 'meta)

;-------------------------------------------------------------------------------
(provide 'osx-setting)		 


	
	
	
