;; Local Variables:
;; lexical-binding: t
;; End:

(add-to-list 'load-path "~/.emacs.d")
(require 'custom-el)

(add-to-list 'load-path "~/.emacs.d/magit")

(delete-selection-mode)

(add-to-list 'load-path "~/.emacs.d/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)

(require 'etags-table)

(add-to-list 'load-path "~/.emacs.d/emacs-grep-a-lot")
(require 'grep-a-lot)

(add-to-list 'load-path "~/.emacs.d/haskell-mode")
(require 'haskell-mode)
(require 'cc-mode)

(global-auto-revert-mode 1)

(defun set-newline-indent (modemap)
  (define-key modemap [return] 'newline-and-indent))
(mapcar 'set-newline-indent (list c-mode-map haskell-mode-map emacs-lisp-mode-map))

(setq grep-find-history '("find . -type f -print0 |xargs -0 grep -nH -e "))

(require 'indent-region)

(require 'c-functions)
(require 'magit)
(require 'rebase-mode)
(require 'cl-lib)
(require 'comint)
(require 'python)
(require 'key-bindings)

(server-start)

(tool-bar-mode -1)
(menu-bar-mode -1)

(setenv "EDITOR" "emacsclient")
(setenv "PAGER" "")
(setenv "PATH" (concat (getenv "HOME") "/.cabal/bin" ":" (getenv "PATH")))

;(add-hook 'before-save-hook 'delete-trailing-whitespace)
;(remove-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'uniquify)
(setq
  uniquify-buffer-name-style 'post-forward
  uniquify-separator ":")

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)


(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(require 'highlight-chars)
(add-hook 'haskell-mode-hook 'hc-highlight-tabs)
(add-hook 'haskell-mode-hook 'hc-highlight-trailing-whitespace)

(defconst ansi-color-drop-regexp
  "\033\\[\\([ABCDsuK]\\|\\?25[lh]\\|2[KJ]\\|=[0-9]+[hI]\\|[0-9;]*[Hf]\\)"
  "Regexp that matches ANSI control sequences to silently drop.")

(require 'compile)
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(setq whitespace-style '(trailing tabs tab-mark trailing face))

(defun string-match-group (str group-num)
  (substring str (match-beginning group-num) (match-end group-num)))

(defun sane-match (regexp str groups)
  (string-match regexp str)
  (mapcar (lambda (group-num) (string-match-group str group-num)) groups))

(defun project-wide-grep (component-name &optional find-args to-find)
  (interactive "sDirectory component name: \n")
  (let*
      ((postfix
        (car (sane-match (concat ".*/" component-name "/\\(.*\\)/") default-directory '(1))))
       (escape-path (replace-regexp-in-string "[^/]+" ".." postfix))
       (sym (if (eq nil to-find) (thing-at-point 'symbol) to-find))
       (cmd (concat "find " escape-path (if (eq nil find-args) "" (concat " \\( " find-args " \\)")) " -type f -print0 | xargs -0 grep --color=never -n " sym)))
    (grep-find cmd)))
