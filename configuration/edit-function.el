;;; edit-function  --- basic edit function
;;; Commentary:
;;; Code:
;; copy words or line or paragrage

(defun copy-word (&optional arg)
  "Copy words at point into kill-ring"
   (interactive "P")
   (let ((beg (progn (if (looking-back "[a-zA-Z0-9]" 1) (backward-word 1)) (point))) 
 	(end (progn (forward-word arg) (point))))
     (copy-region-as-kill beg end))
 )
(global-set-key (kbd "C-c w")         (quote copy-word))




(defun copy-line (&optional arg)
  "Save current line into Kill-Ring without mark the line "
   (interactive "P")
   (let ((beg (line-beginning-position)) 
 	(end (line-end-position arg)))
     (copy-region-as-kill beg end))
   (yank)
   (next-line)
 )
  (global-set-key (kbd "C-c j")         (quote copy-line))



 (defun copy-paragraph (&optional arg)
  "Copy paragraphes at point"
   (interactive "P")
   (let ((beg (progn (backward-paragraph 1) (point))) 
 	(end (progn (forward-paragraph arg) (point))))
     (copy-region-as-kill beg end))
 )
(global-set-key (kbd "C-c o")         (quote copy-paragraph))


 (defun copy-string (&optional arg)
   "Copy a sequence of string into kill-ring"
    (interactive)
    (setq onPoint (point))
    (let ( 
 	 ( beg 	(progn (re-search-backward "[\t ]" (line-beginning-position) 3 1) 
 			  (if (looking-at "[\t ]") (+ (point) 1) (point) ) )
 		)
           ( end  (progn  (goto-char onPoint) (re-search-forward "[\t ]" (line-end-position) 3 1)
 			  (if (looking-back "[\t ]") (- (point) 1) (point) ) )
 		 ))
    (copy-region-as-kill beg end)
  )
  )
  (global-set-key (kbd "C-c u")         (quote copy-string))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;move line up down
(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg))
        (forward-line -1))
      (move-to-column column t)))))

(defun move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (move-text-internal arg))

(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (move-text-internal (- arg)))

(global-set-key (kbd "s-n") 'move-text-down)
(global-set-key (kbd "s-p") 'move-text-up)

(setq ispell-local-dictionary "en")

(flyspell-mode)
(provide 'edit-function)
