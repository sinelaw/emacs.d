(require 'os)

(defun c-insert-header-protector (&optional header-name)
  (interactive)
  (let* ((protector-name
          (replace-regexp-in-string "[^a-zA-Z0-9_]" "_"
                                    (or header-name (os-basename (buffer-file-name))))))
    (save-excursion
      (beginning-of-buffer)
      (insert "#ifndef __" (upcase protector-name) "_\n"
              "#define __" (upcase protector-name) "_\n\n")
      (end-of-buffer)
      (insert "\n#endif\n"))))

(defun c-insert-header-includer ()
  (interactive)
  (let* ((header-name
          (replace-regexp-in-string "\\.c" ".h"
                                    (os-basename (buffer-file-name)))))
    (save-excursion
      (beginning-of-buffer)
      (insert "#include \"" header-name "\"\n"))))

(defun c-make-module (name)
  (interactive "sModule Name: ")
  (find-file (format "%s.c" name))
  (c-insert-header-includer)
  (find-file (format "%s.h" name))
  (c-insert-header-protector))

(provide 'c-functions)
