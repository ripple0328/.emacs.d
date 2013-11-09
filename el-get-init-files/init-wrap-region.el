(wrap-region-mode t)
(wrap-region-add-wrappers
 '(("$" "$")
   ("{-" "-}" "#")
   ("/" "/" nil 'ruby-mode)
   ("/* " " */" "#" '(java-mode javascript-mode css-mode))
   ("`" "`" nil '(markdown-mode ruby-mode))))
