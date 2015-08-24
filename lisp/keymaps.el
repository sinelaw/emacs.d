(defun keymap-extract (keymap)
  (let ((results nil))
    (map-keymap
     (lambda (key value)
       (push (cons key value) results))
     keymap)
    results))

(fset 'slow-yes-or-no-p (function yes-or-no-p))
(fset 'yes-or-no-p (function y-or-n-p))

(provide 'keymaps)
