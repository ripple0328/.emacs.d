(require 'moe-theme)
(require 'moe-theme-switcher)

(setq moe-light-pure-white-background-in-terminal t)
;; (available colors: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b.)
;; (moe-theme-set-color 'orange)

(moe-theme-random-color)

(powerline-moe-theme)

;; 设置经纬度，好切换theme
(setq calendar-latitude +34.26)
(setq calendar-longitude +108.96)
