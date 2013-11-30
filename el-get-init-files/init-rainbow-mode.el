;; CSS and Rainbow modes 
(defun all-css-modes() (css-mode) (scss-mode) (rainbow-mode)) 

;; Load both major and minor modes in one call based on file type 
(add-to-list 'auto-mode-alist '("\\.css$" . all-css-modes)) 
(add-to-list 'auto-mode-alist '("\\.scss$" . all-css-modes))
(add-to-list 'auto-mode-alist '("\\.sass$" . all-css-modes)) 
