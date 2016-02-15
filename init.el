;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/git-gutter-plus")
(add-to-list 'load-path "~/.emacs.d/emacs-eclim")
(add-to-list 'load-path "~/.emacs.d/helm")
(add-to-list 'load-path "~/.emacs.d/helm-ls-git")
(add-to-list 'load-path "~/.emacs.d/helm-git-grep")
(add-to-list 'load-path "~/.emacs.d/c-comment-edit-mode")

(setq woman-show-log nil)

;; (require 'auto-complete)
(global-linum-mode)

(require 'c-comment-edit)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'eclimd)
(global-eclim-mode)
(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

(setq custom-file "~/.emacs.d/lisp/my-custom.el")
(setq-default truncate-lines t)

(setq compile-command "buildsome --disable-color -j8")
(setq compile-history (list "buildsome --disable-color -j8" "cabal build" "cabal install" "make"))

(require 'helm-config)
(require 'helm-ls-git)
(require 'helm-git-grep)
(require 'helm-proc)

;(require 'smex)
;(smex-initialize)

(require 'hindent)

(require 'flycheck-via-make) ; before my-custom which refers to it

(require 'ctx-switch-face)

(require 'magit)
(require 'git-gutter+)
(require 'my-custom)

;; TODO: add the ido find -name/-iname fix for wide-find-file

;(require 'git-rebase-mode)

(require 'indent-region)
(require 'uniquify)
(require 'dired-ext)
(require 'grep-all)
(require 'settings)
(require 'mode-hooks)
(require 'c-functions)
(require 'better-registers)
(require 'undo-tree)
(global-undo-tree-mode)

(require 'tags-ext)
(require 'keymaps)

(require 'haskell-indentation)
(require 'haskell-font-lock)
(require 'haskell-mode)
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.hsc\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))
(add-to-list 'auto-mode-alist '("\\.hcr\\'" . haskell-core-mode))

(set-language-environment "UTF-8")

(require 'grep-a-lot)

(require 'anything)
(require 'auto-install)

(require 'etags-table)
(setq etags-table-search-up-depth 10)

(require 'compile)
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; (require 'rtags)
;; (rtags-start-process-maybe)
;; (rtags-enable-standard-keybindings nil "\M-[")
;; (define-key c-mode-base-map [(meta ?.)] 'rtags-find-symbol-at-point)

;(start-eclimd (concat (getenv "HOME") "/workspace"))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(delete-selection-mode t)
(global-auto-revert-mode 1)
(column-number-mode t)

;; (global-flycheck-mode)

(require 'column-enforce-mode)
(add-hook 'prog-mode-hook 'column-enforce-mode)

;; (add-hook 'after-init-hook #'global-flycheck-mode)

(require 'smooth-scrolling)
(setq smooth-scroll-margin 5)
(setq scroll-conservatively 9999
      scroll-preserve-screen-position t)

(load "haskell-mode-autoloads.el")
(load "chris-done-haskell.el")

(provide 'init)

; new gdb is incredibly annoying, use old gud-gdb instead
(fset 'gdb 'gud-gdb)

(setq inhibit-splash-screen t)

(require 'key-bindings)

(server-start)

;;; init.el ends here
(put 'scroll-left 'disabled nil)

;; xrefactory
;; (defvar xref-current-project nil) ;; can be also "my_project_name"
;; (defvar xref-key-binding 'local) ;; can be also 'local or 'none
;; (setq load-path (cons "/home/noam/Downloads/xref/emacs" load-path))
;; (setq exec-path (cons "/home/noam/Downloads/xref" exec-path))
;; (load "xrefactory")

(setq load-path (cons "/home/noam/.emacs.d/hlint-refactor-mode" load-path))
(require 'hlint-refactor-mode)

(require 'table)
(add-hook 'text-mode-hook 'table-recognize)
