(require 'dired)

(defun dired-mark-files-extension (extension &optional marker-char)
  "Mark all files ending with the given extension for use in later commands.
A prefix argument means to unmark them instead.
`.' and `..' are never marked."
  (interactive
   (list (read-string (concat (if current-prefix-arg "Unmark" "Mark")
                              " extension: "))
	 (if current-prefix-arg ?\040)))
  (dired-mark-files-regexp (concat (regexp-quote extension) "$") marker-char))

(define-key dired-mode-map [?% ?e] 'dired-mark-files-extension)

(provide 'dired-ext)
