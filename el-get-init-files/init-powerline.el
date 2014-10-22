;; (require 'powerline)
;; (setq powerline-arrow-shape 'arrow)   ;; the default
;; (setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
;; (setq powerline-arrow-shape 'arrow14) ;; best for small


;; (custom-set-faces
;;  '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
;;  '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;; (setq powerline-color1 "black")
;; (setq powerline-color2 "white")


(defvar mode-line-cleaner-alist
  `((auto-complete-mode . " α")
    (yas-minor-mode . " γ")
    (paredit-mode . " Φ")
    (eldoc-mode . "")
    (abbrev-mode . "")
    (textmate-mode . "")
    (visual-line-mode . "")
    (smartparens-mode . "")
    (flyspell-mode . "")
    (undo-tree-mode . " τ")
    (wrap-region-mode . "")
    (volatile-highlights-mode . " υ")
    (elisp-slime-nav-mode . " δ")
    (nrepl-interaction-mode . " ηζ")
    (auto-fill-function . " φ")
    (autopair-mode . "")
    (lambda-mode . "")
    (kibit-mode . " κ")    
    (robe-mode . "")

    ;; Major modes
    (nrepl-mode . "ηζ")
    (clojure-mode . "λ")
    (hi-lock-mode . "")
    (python-mode . "Py")
    (emacs-lisp-mode . "el")
    (markdown-mode . "md")
    (org-mode . "Ο")
    (enh-ruby-mode . "Rb")
    (rubocop-mode . "")
    (dired-mode . "Dired")
    (cperl-mode . "Pl")
)
  "Alist for `clean-mode-line'.

When you add a new element to the alist, keep in mind that you
must pass the correct minor/major mode symbol and a string you
want to use in the modeline *in lieu of* the original.")


(defun clean-mode-line ()
  (interactive)
  (loop for cleaner in mode-line-cleaner-alist
        do (let* ((mode (car cleaner))
                 (mode-str (cdr cleaner))
                 (old-mode-str (cdr (assq mode minor-mode-alist))))
             (when old-mode-str
                 (setcar old-mode-str mode-str))
               ;; major mode
             (when (eq mode major-mode)
               (setq mode-name mode-str)))))


(add-hook 'after-change-major-mode-hook 'clean-mode-line)

