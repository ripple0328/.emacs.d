;;; mu4e --- emacs email client
;;; Commentary:
;;; Code:

                                        ;reference
; http://mattbriggs.net/blog/2012/03/18/awesome-emacs-plugins-ctags/

;; eproject-root could replaced by rinari-root
(defun build-ctags ()
  (interactive)
  (message "building project tags")
  (let ((root (eproject-root)))
    (shell-command
		 (concat "ctags -e  --extra=+fq -f " root "TAGS"
						 " -R app lib vendor config features spec script"
						 " -R " (concat (replace-regexp-in-string "\n" ""
						 																	 (shell-command-to-string "rvm gemdir")) "/gems/"))))
  (visit-project-tags)
  (message "tags built successfully"))

; variable control case sensitive
; tags-case-fold-search
(defun visit-project-tags ()
  (interactive)
  (let ((tags-file (concat (eproject-root) "TAGS")))
    (visit-tags-table tags-file)
    (message (concat "Loaded " tags-file))))


(defun my-find-tag ()
  (interactive)
  (if (file-exists-p (concat (eproject-root) "TAGS"))
      (visit-project-tags)
    (build-ctags))
  (etags-select-find-tag-at-point))

(global-unset-key (kbd"M-."))
(global-set-key (kbd "M-.") 'my-find-tag)
(setq tags-table-list '("~/Rea/finance/finance-ui/TAGS"))

(provide 'tags-setting)

