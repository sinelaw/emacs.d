(require 'cc-mode)

(defface CTX-SWITCH-face
  '((t (:background "#AA22AA" :foreground "black")))
  "CTX_SWITCH face."
  :group 'c)

(defface ctx-switch-face
  '((t (:background "#330033" :foreground "white")))
  "ctx_switch face."
  :group 'c)

(defun add-ctx-switch-keyword ()
  (font-lock-add-keywords
   nil
   '(("\\<\\(CTX_SWITCH\\)" 1 'CTX-SWITCH-face t)
     ("[^/]\\<\\(ctx_switch\\)\\>" 1 'ctx-switch-face t))))
(add-hook 'c-mode-common-hook 'add-ctx-switch-keyword)

(provide 'ctx-switch-face)
