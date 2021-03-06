(add-hook 'enh-ruby-mode-hook 'robe-mode)
;; switch from common Ruby compilation modes to interact with a debugger.
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(add-hook 'robe-mode-hook 'ac-robe-setup)

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))
