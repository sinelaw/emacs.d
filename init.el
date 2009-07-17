(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/auto-install")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/python-mode")
;(add-to-list 'load-path "~/.emacs.d/twisted")
(setq custom-file "~/.emacs.d/my-custom.el")

;; TODO: add the ido find -name/-iname fix for wide-find-file

(require 'my-custom)

(require 'uniquify)
(require 'dired-ext)
(require 'key-bindings)
(require 'settings)
(require 'mode-hooks)
(require 'c-functions)
(require 'better-registers)

(require 'tags-ext)
(require 'keymaps)

(require 'haskell-mode)
;; (require 'haskell-indentation)
;(add-hook haskell-mode-hook 'turn-on-haskell-indentation)

(require 'grep-a-lot)

(require 'anything)
(require 'auto-install)

(require 'etags-table)
(setq etags-table-search-up-depth 10)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
