(print-log "setting personal infomation")

;;------------------------------------------------------------------------------
;; 切勿随便修改，否则就连不上daemon啦
;;------------------------------------------------------------------------------
;(setq server-name "Qingbo") ;设定server名称.默认名称是server.
;(setq server-host "192.168.2.100") ;指定本emacs server是否允许远程连接.
;(setq server-use-tcp t) ;使用tcp-ip方式连接.
;(setq server-socket-dir (format "/tmp/emacs%d" (user-uid)))

;;------------------------------------------------------------------------------
;; user setting
;;------------------------------------------------------------------------------
(setq user-full-name "Qingbo ZHANG") ;发件人姓名
(setq user-mail-address "ripple0328@gmail.com") ;发件人邮件地址
(setq mail-archive-file-name (concat emacs-dir ".mailbak")) ;指定发送邮件是，密抄一份到固定文件，作为备份。
;; (setq tramp-default-method "ftp")

;; w3m setting
(setq w3m-default-display-inline-images t)
(setq w3m-home-page "http://www.google.com.hk")


(provide 'personal-info)
