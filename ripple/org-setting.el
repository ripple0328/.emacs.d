;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                              Org Configuration                            
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(print-log "loading org setting")
;;------------------------------------------------------------------------------
;; active babel languages
;;------------------------------------------------------------------------------

(org-babel-do-load-languages
 'org-babel-load-languages
  '(
 	 (ruby . t)
    (ditaa . t)
    (sh . t)
    (gnuplot . t)
    (matlab . t)
    (css . t)
    (python . t)
    (js . t)
    (C . t)
    (dot . t)
    (emacs-lisp . t)
   ))

;;------------------------------------------------------------------------------
;; org project
;;------------------------------------------------------------------------------
(require 'org-publish)
(setq org-publish-use-timestamps-flag nil)

(setq org-publish-project-alist
      '(
        ("org-notes"
         :base-directory "~/Dropbox/org"
         :base-extension "org"
         :publishing-directory "~/Dropbox/html"
;				 :publishing-directory "/Volumes/econoline.websitewelcome.com"
				 
         :recursive t
         :publishing-function org-publish-org-to-html
         :exclude ".git/*"
         :exclude "sitemap0.org"
         :headline-levels 999
         :auto-preamble t

         :auto-sitemap t
         :sitemap-filename "sitemap0.org"
         :sitemap-title "Document Sitemap"
         :sitemap-style 'tree

         :headline-level 999
         :section-numbers nil
         :sub-superscript nil

         :style-include-default nil
         ;; :style "<link rel=\"stylesheet\" type=\"text/css\" href=\"~/.emacs.d/org-templates/css/stylesheet.css\" />"
         ;;在每一层的目录下面写了,不知道有好办法没有
         :author "Qingbo"
         :email "ripple0328@rubyer.info"
         )

        
        ;; ("org-pdf"
        ;;  :base-deirectory "~/Document/org/"
        ;;  :base-extension "org"
        ;;  :publishing-directory "~/Document/pdf/"
        ;;  :recursive t
        ;;  :publishing-function org-publish-org-to-pdf
        ;;  :title "pdf-work"
        ;;  )

        ("org-static"
         :base-directory "~/Dropbox/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|tiff"
         :publishing-directory "~/Dropbox/html"
;				 :publishing-directory  "/Volumes/econoline.websitewelcome.com"

         :recursive t
         :publishing-function org-publish-attachment
         )
	
        ("org"
         :components ("org-notes" "org-static")
         )
        ))

;;------------------------------------------------------------------------------
;; org tags
;;------------------------------------------------------------------------------

(setq org-tag-alist '(
		      (:startgroup . nil)
		      ("@life" . ?L)
		      ("@tech" . ?t)
          ("@misc" . ?M)
          (:endgroup . nil)
		      (:newline . nil)
		      (:startgroup . nil)
		      ("mac" . ?m) 
		      ("linux" . ?l) 
		      ("git" . ?g)
		      ("simulation" . ?s) 
		      ("RoR" . ?r) 
		      ("javascript" . ?j)
		      ("web" . ?w)
		      ("emacs" . ?e)
          (:endgroup . nil)
		      (:newline . nil)
		      (:startgroup . nil)
		      ("gnus" . ?g)
		      ("org" . ?o) 
		      ("babel" . ?b)
          (:endgroup . nil)
		      )
      )

;;------------------------------------------------------------------------------
;;  agenda
;;------------------------------------------------------------------------------
(org-agenda-files (concat emacs-dir "agenda"))
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-include-diary t)


;; capture

(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-bookmark t)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline (concat dropbox "notes/gtd.org") "Tasks")
				 "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree (concat dropbox "notes/journal.org")
				 "* %?\nEntered on %U\n  %i\n  %a"))))



(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cb" 'org-iswitchb)

; insert mode line on empty file
; like this: 
; MY PROJECTS    -*- mode: org; -*-
(setq org-insert-mode-line-in-empty-file t)

(add-hook 'org-mode-hook 'turn-on-font-lock)


; add structure editing keybindings not set by default
;; (define-key org-mode-map (kbd "C-RET") 'org-insert-heading-respect-content)
;; (define-key org-mode-map (kbd "M-S-RET") 'org-insert-todo-heading)
;; (define-key org-mode-map (kbd "C-S-RET") 'org-insert-todo-heading-respect-content)

;; 将常用的sparse tree搜索定义为快捷键
;; (setq org-agenda-custom-commands
;;       '(("f" occur-tree "FIXME")))

;; whether hide blocks on startup
(setq org-hide-block-startup nil)

;;  save the clock history across Emacs sessions
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; automatically adjust footnotes after insert/delete.
(setq org-footnote-auto-adjust t)

(provide 'org-setting)

