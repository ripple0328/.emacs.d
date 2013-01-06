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
;;(require 'org-publish)
(setq org-publish-use-timestamps-flag nil)

(setq org-publish-project-alist
      '(
        ("org-notes"
         :base-directory "~/Documents/org"
         :base-extension "org"
         :publishing-directory "~/Documents/html"
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
         :base-directory "~/Documents/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|tiff"
         :publishing-directory "~/Documents/html"
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

(provide 'org-setting)
