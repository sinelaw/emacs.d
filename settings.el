(setq make-backup-files nil)
(setq global-font-lock-mode t)
(setq-default indent-tabs-mode nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
(turn-on-font-lock)
; Parenthesis mode
(show-paren-mode 'sexp)

(tool-bar-mode -1)
(menu-bar-mode -1)

(setenv "TERM" "emacs")

(setq compile-history
      '("make -k"))
(setq grep-find-history '("find . -type f -name \"*.[ch]\" -print0 | xargs -0 -e grep -nH -e "))

(defcustom xiv-system "qa12" "The system with which to work" :type 'string)

(server-start)

(setq process-coding-system-alist '(("" . "unix")))

(defun enable-vc-support ()
  (interactive)
  (setq vc-handled-backends '(RCS CVS SVN SCCS Bzr Git Hg Arch)))
(defun disable-vc-support ()
  (interactive)
  (setq vc-handled-backends nil))

;; vc-support really slows remote file systems down
(disable-vc-support)
; (enable-vc-support)

(require 'whitespace)
(setq whitespace-style '(trailing))

(provide 'settings)
