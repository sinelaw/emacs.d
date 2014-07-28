(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/dash.el")
(add-to-list 'load-path "~/.emacs.d/haskell-mode")
(add-to-list 'load-path "~/.emacs.d/auto-install")
(add-to-list 'load-path "~/.emacs.d/flycheck")
(add-to-list 'load-path "~/.emacs.d/undo-tree")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/python-mode")
(add-to-list 'load-path "~/.emacs.d/rtags/src")
;(add-to-list 'load-path "~/.emacs.d/twisted")
(setq custom-file "~/.emacs.d/my-custom.el")

;; TODO: add the ido find -name/-iname fix for wide-find-file

(add-to-list 'load-path "~/.emacs.d/git-modes")
(require 'git-rebase-mode)
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

(require 'my-custom)

(require 'indent-region)
(require 'uniquify)
(require 'dired-ext)
(require 'key-bindings)
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

(require 'grep-a-lot)

(require 'anything)
(require 'auto-install)

(require 'etags-table)
(setq etags-table-search-up-depth 10)

(require 'rtags)
(rtags-enable-standard-keybindings nil "\M-[")
(define-key c-mode-base-map [(meta ?.)] 'rtags-find-symbol-at-point)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(delete-selection-mode t)
