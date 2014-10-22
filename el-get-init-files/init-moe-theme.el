(require 'moe-theme-switcher)

(setq moe-light-pure-white-background-in-terminal t)
(setq moe-theme-resize-markdown-title '(2.0 1.7 1.5 1.3 1.0 1.0))
(setq moe-theme-resize-org-title '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(2.0 1.7 1.5 1.3 1.1 1.0))
;; (Available colors: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b.)
(moe-theme-random-color)
;; (moe-theme-set-color 'orange)


(powerline-moe-theme)

;; 设置经纬度，好切换theme
(setq calendar-latitude +34)
(setq calendar-longitude +108)
