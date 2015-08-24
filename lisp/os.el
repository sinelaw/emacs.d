(defun os-basename (name)
  (replace-regexp-in-string ".*/\\(.*\\)" "\\1" name))

(provide 'os)
