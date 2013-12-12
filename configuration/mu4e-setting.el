 ;; path to our Maildir directory
     (setq mu4e-maildir (concat emacs-dir "Maildir"))
     
     ;; the next are relative to `mu4e-maildir'
     ;; instead of strings, they can be functions too, see
     ;; their docstring or the chapter 'Dynamic folders'
     (setq mu4e-sent-folder   "/sent"
           mu4e-drafts-folder "/drafts"
           mu4e-trash-folder  "/trash")
     
     ;; the maildirs you use frequently; access them with 'j' ('jump')
     (setq mu4e-maildir-shortcuts
      '(("/INBOX"               . ?i)
         ("/[Gmail].Sent Mail"   . ?s)
         ("/[Gmail].Trash"       . ?t)
         ("/[Gmail].All Mail"    . ?a)))

     ;; don't save message to Sent Messages, Gmail/IMAP takes care of this
     (setq mu4e-sent-messages-behavior 'delete)

     
     ;; a  list of user's e-mail addresses
     (setq mu4e-user-mail-address-list '("ripple0328@gmail.com" "qbzhang@thoughtworks.com"))
     
     ;; when you want to use some external command for text->html
     ;; conversion, e.g. the 'html2text' program
     (setq mu4e-html2text-command "html2text")
     
     ;; the headers to show in the headers list -- a pair of a field
     ;; and its width, with `nil' meaning 'unlimited'
     ;; (better only use that for the last field.
     ;; These are the defaults:
     (setq mu4e-headers-fields
           '( (:date          .  10)
              (:flags         .   4)
              (:from          .  18)
              (:subject       .  nil)))
     
     ;; program to get mail; alternatives are 'fetchmail', 'getmail'
     ;; isync or your own shellscript. called when 'U' is pressed in
     ;; main view.
     
     ;; If you get your mail without an explicit command,
     ;; use "true" for the command (this is the default)
     (setq mu4e-get-mail-command "offlineimap")
     
     ;; general emacs mail settings; used when composing e-mail
     ;; the non-mu4e-* stuff is inherited from emacs/message-mode
     (setq mu4e-reply-to-address "ripple0328@gmail.com"
           user-mail-address "ripple0328@gmail.com"
           user-full-name  "Qingbo ZHANG")
     ;; include in message with C-c C-w
     (setq message-signature
           (concat
            "张清波\n"
            "Qingbo"
            ))
     
     ;; smtp mail setting
     (setq
        message-send-mail-function 'smtpmail-send-it
        smtpmail-default-smtp-server "smtp.gmail.com"
        smtpmail-smtp-server "smtp.gmail.com"
        smtpmail-smtp-service 587
     
        ;; if you need offline mode, set these -- and create the queue dir
        ;; with 'mu mkdir', i.e.. mu mkdir /home/user/Maildir/queue
        smtpmail-queue-mail  nil
        smtpmail-queue-dir  (concat emacs-dir "Maildir/queue/cur"))
     
     ;; don't keep message buffers around
     (setq message-kill-buffer-on-exit t)

(provide 'mu4e-setting)
