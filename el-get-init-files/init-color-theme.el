(print-log "setting color theme")

(if (daemonp)
    (add-hook 'after-make-frame-functions
        (lambda (frame)
            (select-frame frame)
            (load-theme 'color-theme-lethe t))))

(if (window-system)
    ;; (color-theme-hober)
 		(color-theme-subtle-hacker)
    ;; (color-theme-dark-green)
    ;; (color-theme-lethe)

	;; (color-theme-lawrence)
	;; (color-theme-hober)
	(color-theme-arjen)
)
