;;; mu4e --- emacs email client
;;; Commentary:
;;; Code:

(setq
 ;; common setting
 mu4e-maildir (concat emacs-dir "Maildir")
 mu4e-get-mail-command "offlineimap"
 mu4e-sent-messages-behavior 'delete
 message-send-mail-function 'smtpmail-send-it
 message-kill-buffer-on-exit t
 mu4e-html2text-command "html2text -utf8 -width 80"
 mu4e-view-prefer-html nil
 mu4e-show-images t
 mu4e-view-image-max-width 800
 4e-update-interval 300
 mu4e-use-fancy-chars t
 mu4e-attachment-dir "~/Downloads"

 org-mu4e-convert-to-html t

 mail-user-agent 'mu4e-user-agent
 smtpmail-queue-mail  nil
 smtpmail-queue-dir  (concat emacs-dir "Maildir/queue/cur")

 ;; server setting
 smtpmail-stream-type 'ssl
 smtpmail-default-smtp-server "smtp.gmail.com"
 smtpmail-smtp-server "smtp.gmail.com"
 smtpmail-smtp-service 465

 ;; personal account setting
 mu4e-user-mail-address-list '("ripple0328@gmail.com")
 user-mail-address  "ripple0328@gmail.com"
 
 mu4e-drafts-folder "/Gmail/[Gmail].Drafts"
 mu4e-sent-folder   "/Gmail/[Gmail].Sent Mail"
 mu4e-trash-folder  "/Gmail/[Gmail].Trash"

 user-full-name  "Qingbo ZHANG"
 mu4e-reply-to-address "ripple0328@gmail.com"
 message-signature (concat "张清波\n" "Qingbo")
 mu4e-headers-fields
 '((:date          .  10)
   (:flags         .   4)
   (:from          .  18)
   (:subject       .  nil))
 mu4e-maildir-shortcuts
 '(("/Gmail/INBOX"      . ?i)
   ("/Gmail/[Gmail].Sent Mail"  . ?s)
   ("/Gmail/[Gmail].Drafts"     . ?d)
   ("/Gmail/[Gmail].All Mail"   . ?a)
   ("/Gmail/[Gmail].Trash"   . ?t)
   ("/Gmail/[Gmail].Spam"   . ?m))
)

 (when (fboundp 'imagemagick-register-types)
   (imagemagick-register-types))
 
(provide 'mu4e-setting)
;;; mu4e-setting.el ends here
