;;
;  Thank You, Next!
;  thank-you-next.el
;
;  Created by Thomas Johannesmeyer (thomas@geeky.gent) on 16.03.2019.
;  Copyright (c) 2019 www.geeky.gent. All rights reserved.
;


(defun search-and-replace(ex next)
  ; \b detects word boundaries
  ;; (setq rgx (format "\\b\\(%s\\)\\b" ex))
  ; \_< detects word boundaries excluding '_'
  (setq rgx (format "\\_<\\(%s\\)\\_>" ex))
  (while (re-search-forward rgx nil t)
    (if (y-or-n-p "Thank you, next. Next?")
	(progn
	  (replace-match next nil t))
      (progn
	(message "No more expressions of %s left" ex)
      )
    )
  )
)


(defun thank-you-next()
  (interactive)
  (save-excursion
    (setq ex (thing-at-point 'word))
    (setq next (read-string (format "Replace %s with: " ex)))

    ; Replace word under cursor
    (setq bounds (bounds-of-thing-at-point 'symbol))
    (setq pos1 (car bounds))
    (setq pos2 (cdr bounds))
    (delete-region pos1 pos2)
    (insert next)

    (search-and-replace ex next)
    (goto-line 1) ; We hit EOF
    (search-and-replace ex next)

    (message "I'm so f*cking grateful for my %s" ex)
  )
)

; The default Emacs search is case-insensitive. I use this plugin for programming
; and I do not want to mix up classes and instances per default.
; I do not want to manually override the case-fold-search settings of the user,
; so I advice the search method to temporarily switch case insensitive search OFF.

(defadvice search-and-replace (around turn-off-case-fold-search)
  (let ((case-fold-search nil))
    ad-do-it))
