
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;; Code:

(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (noam)))
 '(custom-safe-themes
   (quote
    ("211841eceb96c69e0fd69c6d89c4104f877190bf4ae4a3d6a6ad1a94629f54e6" "4fbb52182a1af390d59b23669b5397df29c29a8cdd02cd6ec5fc859143c47001" default)))
 '(flycheck-clang-args (quote ("-DCOMPILE_UNIT=\"foo.c\"")))
 '(flycheck-clang-include-path (quote ("/home/noam/repos/elfs-system/elfs")))
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(line-number-mode nil)
 '(package-selected-packages
   (quote
    (company-rtags flycheck-rtags use-package helm-git-grep rtags jump-tree column-enforce-mode undo-tree undohist multiple-cursors pylint go-mode helm helm-git helm-ls-git intero magit python-mode)))
 '(rtags-path "~/repos/thirdparty/rtags")
 '(safe-local-variable-values
   (quote
    ((include-header-prefix . "ELFS__")
     (c-indent-level . 4))))
 '(sublimity-mode t)
 '(undo-tree-auto-save-history t)
 '(undo-tree-incompatible-major-modes (quote (term-mode magit-log)))
 '(undo-tree-visualizer-diff t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:inherit (shadow default))))))

(global-undo-tree-mode)
(global-flycheck-mode)
(global-jump-tree-mode)
(global-linum-mode)
(delete-selection-mode t)
(toggle-truncate-lines 1)

(setq line-number-mode t)
(setq column-number-mode t)

(column-enforce-n 120)
(global-column-enforce-mode)

(bind-key* (kbd "C-x C-f") 'ido-find-file)
(bind-key* (kbd "C-b") 'ido-switch-buffer)
(bind-key* (kbd "<C-tab>") 'other-window)

(bind-key* [(meta up)] (defun scroll-down-one () (interactive) (scroll-down 1)))
(bind-key* [(meta down)] (defun scroll-up-one () (interactive) (scroll-up 1)))

;; Code editing
(bind-key* [(meta ?3)] 'comment-region)
(bind-key* [(meta ?4)] 'uncomment-region)

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

(defun resolve-trivial-conflicts ()
  (interactive)
  (let ((compilation-buffer-name-function (lambda (mode) "*exec resolve-trivial-conflicts*")))
    (compile "resolve-trivial-conflicts -d")))

(provide 'init)
;;; init.el ends here
