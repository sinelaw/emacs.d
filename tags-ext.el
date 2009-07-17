(defun tags-ext-make-tags (path)
  (interactive (list (ido-read-directory-name "Make TAGS in: ")))
  (shell-command (format "cd %s ; rm -f TAGS ; find -type f -name \"*.[ch]\" -print0 | xargs -0 etags -a &" path)
                 "*Make TAGS output*"))

(defun tags-ext-find-tag-at-point (&optional other-window)
  (interactive)
  (find-tag (find-tag-default) other-window))

(provide 'tags-ext)
