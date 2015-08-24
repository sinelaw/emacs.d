(defvar position-stack ()
  "The stack of positions represented as a reversed list")

(defun position-stack-current-position ()
  (cons (current-buffer) (point)))

(defun position-stack-set-current-position (new-position)
  (let ((new-buffer (car new-position))
	(new-point (cdr new-position)))
    (switch-to-buffer new-buffer)
    (setf (point) new-point)))

(defun position-stack-push ()
  (interactive)
  (setf position-stack (cons (position-stack-current-position) position-stack)))

(defun position-stack-pop ()
  (interactive)
  (when (not position-stack)
    (error "no positions in stack"))
  (let ((new-position (car position-stack)))
    (setf position-stack (cdr position-stack))
    (position-stack-set-current-position (car position-stack))))

(provide 'position-stack)
