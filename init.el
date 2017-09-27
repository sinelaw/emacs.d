;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;; Code:

(package-initialize)

(setenv "PATH" (concat (getenv "PATH") ":~/.local/bin"))
(setq exec-path (append exec-path '("~/.local/bin")))

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/lisp")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-enforce-column 120)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (noam)))
 '(custom-safe-themes
   (quote
    ("211841eceb96c69e0fd69c6d89c4104f877190bf4ae4a3d6a6ad1a94629f54e6" "4fbb52182a1af390d59b23669b5397df29c29a8cdd02cd6ec5fc859143c47001" default)))
 '(fast-but-imprecise-scrolling t)
 '(flycheck-clang-args
   (quote
    ("-DCOMPILE_UNIT=\"foo.c\"" "-Xclang" "-load" "-Xclang" "/home/noam/repos/elfs-system/elfs/tools/clang_plugins/clang_plugins.so" "-Xclang" "-add-plugin" "-Xclang" "include_cleaner" "-Xclang" "-add-plugin" "-Xclang" "enums_conversion" "-Xclang" "-add-plugin" "-Xclang" "warn_unused_result" "-Xclang" "-add-plugin" "-Xclang" "large_assignment" "-Xclang" "-plugin-arg-large_assignment" "-Xclang" "127")))
 '(flycheck-clang-definitions
   (quote
    ("_GNU_SOURCE" "_FILE_OFFSET_BITS=64" "FUSE_USE_VERSION=22" "CLANG_PLUGIN_ENUMS_CONVERSION")))
 '(flycheck-clang-include-path
   (quote
    ("/home/noam/repos/elfs-system/elfs" "/usr/lib/llvm-3.7/include/" "/home/noam/repos/elfs-system/elfs/smb/VS/src/linux/" "/home/noam/repos/elfs-system/elfs/smb/VS/src/nq/")))
 '(flycheck-clang-language-standard "gnu11")
 '(flycheck-clang-warnings (quote ("all" "extra" "conversion" "switch-enum")))
 '(flycheck-error-list-minimum-level nil)
 '(flycheck-navigation-minimum-level (quote warning))
 '(flycheck-temp-prefix "#flycheck")
 '(gdb-many-windows t)
 '(global-git-gutter-mode t)
 '(global-whitespace-mode t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(line-number-display-limit 10000000)
 '(line-number-mode nil)
 '(magit-auto-revert-mode nil)
 '(magit-git-global-arguments
   (quote
    ("--no-pager" "--literal-pathspecs" "-c" "core.preloadindex=true" "-c" "log.showSignature=false")))
 '(magit-process-connection-type nil)
 '(package-selected-packages
   (quote
    (flycheck-tip outline-magic path-headerline-mode markdown-mode lua-mode string-inflection groovy-mode gl-conf-mode git-gutter+ git-timemachine sokoban company-rtags use-package helm-git-grep rtags jump-tree column-enforce-mode undo-tree undohist multiple-cursors pylint go-mode helm helm-git helm-ls-git intero magit python-mode)))
 '(path-headerline-mode t)
 '(rtags-path "~/repos/thirdparty/rtags")
 '(safe-local-variable-values
   (quote
    ((include-header-prefix . "ELFS__")
     (c-indent-level . 4))))
 '(show-paren-mode t)
 '(sublimity-mode t)
 '(truncate-lines t)
 '(truncate-partial-width-windows nil)
 '(undo-tree-auto-save-history t)
 '(undo-tree-incompatible-major-modes (quote (term-mode magit-log)))
 '(undo-tree-visualizer-diff t)
 '(which-function-mode t)
 '(whitespace-action (quote (auto-cleanup)))
 '(whitespace-style (quote (face trailing tabs empty tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:inherit (shadow default))))))

;; Avoid security issue with enriched text (https://lists.gnu.org/archive/html/emacs-devel/2017-09/msg00211.html)
(eval-after-load "enriched"
  '(defun enriched-decode-display-prop (start end &optional param)
     (list start end)))

(setq-default indent-tabs-mode nil)
(global-undo-tree-mode)
(global-flycheck-mode)
(global-jump-tree-mode)
(global-linum-mode)
(global-auto-revert-mode t)
(delete-selection-mode t)
(toggle-truncate-lines 1)
(tool-bar-mode 0)
(menu-bar-mode 0)
(path-headerline-mode 1)

(defun activate-outline-minor-mode () (outline-minor-mode 1))
(add-hook 'c-mode-hook 'activate-outline-minor-mode)

(require 'ctx-switch-face)

(setq line-number-mode t)
(setq column-number-mode t)

(column-enforce-n 120)
(global-column-enforce-mode)

(bind-key* (kbd "C-x C-f") 'ido-find-file)
(bind-key* (kbd "C-b") 'ido-switch-buffer)
(bind-key* (kbd "<C-tab>") 'other-window)

(bind-key* [(meta up)] (defun scroll-down-one () (interactive) (scroll-down 1)))
(bind-key* [(meta down)] (defun scroll-up-one () (interactive) (scroll-up 1)))

(bind-key* [(meta left)] 'backward-sexp)
(bind-key* [(meta right)] 'forward-sexp)

;; Code editing
(bind-key* [(meta ?3)] 'comment-region)
(bind-key* [(meta ?4)] 'uncomment-region)
(bind-key* (kbd "M-g") 'goto-line)
(bind-key* (kbd "C-`") 'flycheck-tip-cycle)

;; Undo
(bind-key* (kbd "C-z") 'undo-tree-undo)
(bind-key* (kbd "C-S-z") 'undo-tree-redo)

(bind-key* [pause] 'kill-this-buffer)
(bind-key* (kbd "<f5>") 'delete-other-windows)

(bind-key* [f9] 'compile)

(bind-key* (kbd "<s-left>") 'jump-tree-jump-prev)
(bind-key* (kbd "<s-right>") 'jump-tree-jump-next)

;; Error navigation
(bind-key* [f4] 'next-error)
(bind-key* [(meta f4)] 'previous-error)
(bind-key* [(shift f4)] 'previous-error)

;; Keyboard macros
(bind-key* [f11] 'call-last-kbd-macro)

(bind-key* (kbd "M-.") 'rtags-find-symbol-at-point)

;; Helm
(bind-key* (kbd "M-x") 'helm-M-x)
(bind-key* [(shift f6)] 'helm-git-grep)
(bind-key* [f6] 'helm-ls-git-ls)

;; Quit emacs
(bind-key* [(control x) ?c] 'save-buffers-kill-emacs)
(bind-key* [(control x) (control c)] (defun print-message-about-exit () (interactive) (message "Use Control-x c!")))

;; Multiple cursors
(bind-key* (kbd "C->") 'mc/mark-next-like-this)
(bind-key* (kbd "C-<") 'mc/mark-previous-like-this)

(bind-key* (kbd "<f3>") 'rtags-find-references-at-point)

(bind-key* (kbd "<f12>") 'outline-cycle)

(defun resolve-trivial-conflicts ()
  (interactive)
  (let ((compilation-buffer-name-function (lambda (mode) "*exec resolve-trivial-conflicts*")))
    (compile "resolve-trivial-conflicts -C -d")))

(bind-key* (kbd "M-S-<f10>") 'resolve-trivial-conflicts)

(server-start)

(provide 'init)
;;; init.el ends here
