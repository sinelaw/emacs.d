;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'flycheck)

(flycheck-define-checker make-based-checker
  "A Make-based syntax checker like flymake."
  :command ("~/.emacs.d/bin/check-syntax" source
            (eval (flycheck-c/c++-quoted-include-directory)))
  :error-patterns
  ((error line-start
          (message "In file included from") " " (file-name) ":" line ":"
          line-end)
   (info line-start (file-name) ":" line ":" column
         ": note: " (message) line-end)
   (warning line-start (file-name) ":" line ":" column
            ": warning: " (message) line-end)
   (error line-start (file-name) ":" line ":" column
          ": " (or "fatal error" "error") ": " (message) line-end))
  ;; :error-filter
  ;; (lambda (errors)
  ;;   (flycheck-fold-include-errors
  ;;    (flycheck-sanitize-errors errors) "In file included from"))
  :modes (c-mode c++-mode))


(provide 'flycheck-via-make)
;;; flycheck-via-make.el ends here
