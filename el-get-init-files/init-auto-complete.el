(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(setq ac-ignore-case nil)


(defvar ac-source-yasnippet
  '((candidates . ac-yasnippet-candidate)
    (action . yas/expand)
    (candidate-face . ac-yasnippet-candidate-face)
    (selection-face . ac-yasnippet-selection-face))
  "Source for Yasnippet.")


(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
; setting ac backend
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers
                           ac-source-abbrev
                           ac-source-dictionary
													 ac-source-filename
													 ac-source-css-property
                           ac-source-yasnippet
                           ac-source-functions
                           ac-source-files-in-current-dir
													 ac-source-robe))
;(setq ac-auto-start 2) ; less then 8, otherwise use yasnippet.
(setq ac-use-quick-help t)
(setq ac-auto-show-menu t)
(ac-set-trigger-key "TAB")

(setq completion-at-point-functions '(auto-complete))

; hippie-expand
;; (global-set-key (kbd "M-/") 'hippie-expand)
;; (setq hippie-expand-try-functions-list
;;       '(try-expand-dabbrev                 ; 搜索当前 buffer
;;         try-expand-dabbrev-visible         ; 搜索当前可见窗口
;;         try-expand-dabbrev-all-buffers     ; 搜索所有 buffer
;;         try-expand-dabbrev-from-kill       ; 从 kill-ring 中搜索
;;         try-complete-file-name-partially   ; 文件名部分匹配
;;         try-complete-file-name             ; 文件名匹配
;;         try-expand-all-abbrevs             ; 匹配所有缩写词
;;         try-expand-list                    ; 补全一个列表
;;         try-expand-line                    ; 补全当前行
;;         try-complete-lisp-symbol-partially ; 部分补全 elisp symbol
;;         try-complete-lisp-symbol))         ; 补全 lisp symbol

(ac-flyspell-workaround)
