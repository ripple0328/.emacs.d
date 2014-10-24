;;; org-mode --- 
;;; Commentary:
;;; Code:

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
(setq org-publish-use-timestamps-flag t)

(setq org-publish-project-alist
      '(
        ("blog" :components ("blog-article" "assets" "blog-rss"))

        ("blog-article"
         :html-extension "html"
         :base-extension "org"
         :base-directory "~/Dropbox/org"
         :publishing-directory "~/Dropbox/ripple0328.github.io"
         :recursive t
         :section-numbers nil  ; don't create numbered sections
         :with-toc t
         :with-latex t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :exclude ".git/*\\|private/*\\|org-templates/*\\|rss.org"
         :html-inline-images t
         :auto-sitemap t
         :sitemap-filename "archive.org"
         :sitemap-title "Archive"
         :sitemap-sort-files anti-chronologically
         :sitemap-style list
         :makeindex t
         ;; :sub-superscript nil
         ;; :html-link-home "/"
         ;; :html-link-up ""
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :html-link-use-abs-url nil
         :org-html-use-infojs t
         :html-preamble "<div class=\"header\">
              <div class=\"nav\">
                  <a href=\"http://blog.rubyer.info/\">Recent</a>  
                  <a href=\"http://blog.rubyer.info/archive.html\">| Archive</a>  
                  <a href=\"http://blog.rubyer.info/about.html\">| AboutMe</a>  
                  <a href=\"http://blog.rubyer.info/theindex.html\">| Index</a>  
              </div>
          </div>"

         :html-postamble 
         (lambda (info)
           "Do not show disqus for Archive and Recent Posts"
           (cond ((string= (car (plist-get info :title)) "Archive") "")
                 (t "<div id=\"disqus_thread\"></div>
                     <script type=\"text/javascript\" src=\"http://blog.rubyer.info/assets/scripts/disqus.js\"></script>")))

         :html-head  "<link rel=\"stylesheet\" type=\"text/css\" href=\"http://blog.rubyer.info/assets/css/worg.css\" />
                      <link rel=\"stylesheet\" type=\"text/css\" href=\"http://blog.rubyer.info/assets/css/blog.css\" />"
         :html-head-extra "<link rel=\"alternate\" type=\"appliation/rss+xml\" href=\"http://blog.rubyer.info/rss.xml\" title=\"RSS feed for Qingbo\"/>"
         :author "Qingbo"
         :email "ripple0328 at gmail dot com"
         )

        ("blog-rss"
         :base-directory "~/Dropbox/org"
         :base-extension "org"
         :publishing-directory "~/Dropbox/ripple0328.github.io"
         :publishing-function org-rss-publish-to-rss
         :html-link-home "http://blog.rubyer.info/"
         :html-link-use-abs-url t
         :exclude ".*"
         :include ("rss.org")
         :with-toc nil
         :section-numbers nil
         :title "Rss for ripple's blog"
         )
        ;; ("org-pdf"
        ;;  :base-deirectory "~/Document/org/"
        ;;  :base-extension "org"
        ;;  :publishing-directory "~/Document/pdf/"
        ;;  :recursive t
        ;;  :publishing-function org-publish-org-to-pdf
        ;;  :title "pdf-work"
        ;;  )

        ("assets"
         :base-directory "~/Dropbox/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|tiff"
         :publishing-directory "~/Dropbox/ripple0328.github.io"
         :recursive t
         :publishing-function org-publish-attachment
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

;; support for ical
(add-to-list 'org-modules 'org-mac-iCal)
(setq org-agenda-include-diary t)

;; support for mac link from other app
(add-hook 'org-mode-hook (lambda () 
  (define-key org-mode-map (kbd "C-c g") 'org-mac-grab-link)))

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

(add-hook 'org-mode-hook (lambda () 
  (define-key org-mode-map (kbd "C-c g") 'org-mac-grab-link)))


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

