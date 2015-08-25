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

(setenv "EDITOR" "emacsclient")
(setenv "PAGER" "")

(setq compile-history
      '("make -k"))
(setq compilation-scroll-output 'first-error)
(setq grep-find-command "git grep --no-color -n -e ")
(setq grep-find-history '("find . -type f -print0 | xargs -0 -e grep -nH --color=never -e "))

(let ((cabal-bin (concat (getenv "HOME") "/.cabal/bin"))
      (ghc-path "/opt/ghc/7.10.2/bin")
      (local-bin (concat (getenv "HOME") "/.local/bin")))
  (setenv "PATH" (concat cabal-bin ":" (getenv "PATH")))
  (setenv "PATH" (concat ghc-path ":" (getenv "PATH")))
  (setenv "PATH" (concat local-bin ":" (getenv "PATH")))
  (push cabal-bin exec-path)
  (push ghc-path exec-path))

(defun set-term ()
  (insert "export TERM=vt100")
  (comint-send-input))
(add-hook 'shell-mode-hook 'set-term)

(defcustom xiv-system "qa12" "The system with which to work" :type 'string)

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
