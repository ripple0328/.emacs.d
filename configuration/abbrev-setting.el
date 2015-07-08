;; sample use of emacs abbreviation feature

(define-abbrev-table 'global-abbrev-table '(

    ;; math/unicode symbols
    ("love1" "♥")
    ("sm1" "☺")

    ;; works
    ("hw"	"however")
    ("wo"	"without")
    ("pro"	"probably")
    ("st"	"sometimes")
    ("dns" "DNS")

    ;; phrases

    ("fe"	"for example")
    ("fi"	"for instance,")
    ("oc"	"of course")
    ("ip"	"in particular")
    ;; emai
    ("myemail" "ripple0328@gmail.com")
    ;; computing tech

    ;; normal english words

    ;; signature
    ("myname" "Zhang Qingbo")
    ;; blog
    ("myblog" "http://blog.rubyer.info")

    ;; emacs regex
    ("8d" "\\([0-9]+?\\)")
    ("8str" "\\([^\"]+?\\)\"")

    ;; shell commands
    ("8ditto" "ditto -ck --sequesterRsrc --keepParent src dest")
    ("8im" "convert -quality 85% ")

    ))

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs t)

;; turn on abbrev mode globally
(setq-default abbrev-mode t)

(provide 'abbrev-setting)
