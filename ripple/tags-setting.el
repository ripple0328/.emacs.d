;reference
; http://mattbriggs.net/blog/2012/03/18/awesome-emacs-plugins-ctags/

;; eproject-root could replaced by rinari-root
(defun build-ctags ()
  (interactive)
  (message "building project tags")
  (let ((root (eproject-root)))
    (shell-command (concat "ctags -e -R --extra=+fq --exclude=db --exclude=test --exclude=.git --exclude=public -f " root "TAGS " root)))
  (visit-project-tags)
  (message "tags built successfully"))

(defun visit-project-tags ()
  (interactive)
  (let ((tags-file (concat (eproject-root) "TAGS")))
    (visit-tags-table tags-file)
    (message (concat "Loaded " tags-file))))
; variable control case sensitive
; tags-case-fold-search

(defun my-find-tag ()
  (interactive)
  (if (file-exists-p (concat (eproject-root) "TAGS"))
      (visit-project-tags)
    (build-ctags))
  (etags-select-find-tag-at-point))

;(global-unset-key (kbd"M-."))
(global-set-key (kbd "M-.") 'my-find-tag)

(provide 'tags-setting)

