(defun tags-ext-make-tags (path)
  (interactive (list (ido-read-directory-name "Make TAGS in: ")))
  (shell-command (format "cd %s ; rm -f TAGS ; find -type f -name \"*.[ch]\" -print0 | xargs -0 etags -a &" path)
                 "*Make TAGS output*"))

(defun my-find-tag-default ()
  "Determine default tag to search for, based on text at point.
If there is no plausible default, return nil."
  (let (from to bound)
    (when (or (progn
		;; Look at text around `point'.
		(save-excursion
		  (skip-syntax-backward "w") (setq from (point)))
		(save-excursion
		  (skip-syntax-forward "w") (setq to (point)))
		(> to from))
	      ;; Look between `line-beginning-position' and `point'.
	      (save-excursion
		(and (setq bound (line-beginning-position))
		     (skip-syntax-backward "^w" bound)
		     (> (setq to (point)) bound)
		     (skip-syntax-backward "w")
		     (setq from (point))))
	      ;; Look between `point' and `line-end-position'.
	      (save-excursion
		(and (setq bound (line-end-position))
		     (skip-syntax-forward "^w" bound)
		     (< (setq from (point)) bound)
		     (skip-syntax-forward "w")
		     (setq to (point)))))
      (buffer-substring-no-properties from to))))

(defun tags-ext-find-tag-at-point (&optional other-window)
  (interactive)
  (find-tag (my-find-tag-default) other-window))

(provide 'tags-ext)
