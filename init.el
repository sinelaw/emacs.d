
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
    ("4fbb52182a1af390d59b23669b5397df29c29a8cdd02cd6ec5fc859143c47001" default)))
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(line-number-mode nil)
 '(package-selected-packages
   (quote
    (column-enforce-mode undo-tree undohist multiple-cursors pylint go-mode helm helm-git helm-ls-git intero magit python-mode)))
 '(safe-local-variable-values
   (quote
    ((include-header-prefix . "ELFS__")
     (c-indent-level . 4))))
 '(undo-tree-auto-save-history t)
 '(undo-tree-incompatible-major-modes (quote (term-mode magit-log)))
 '(undo-tree-visualizer-diff t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-undo-tree-mode)
(global-flycheck-mode)
(delete-selection-mode t)
(column-number-mode t)

(global-set-key (kbd "C-x C-f") 'ido-find-file)
(global-set-key (kbd "C-b") 'ido-switch-buffer)
(global-set-key (kbd "<C-tab>") 'other-window)

;; Undo
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-S-z") 'undo-tree-redo)

(global-set-key [pause] 'kill-this-buffer)
(global-set-key (kbd "<f5>") 'delete-other-windows)

(global-set-key [f9] 'compile)

;; Error navigation
(global-set-key [f4] 'next-error)
(global-set-key [(meta f4)] 'previous-error)
(global-set-key [(shift f4)] 'previous-error)

;; Keyboard macros
(global-set-key [f11] 'call-last-kbd-macro)

;; Helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key [(shift f6)] 'helm-git-grep)
(global-set-key [f6] 'helm-ls-git-ls)

;; Quit emacs
(global-set-key [(control x) ?c] 'save-buffers-kill-emacs)
(global-set-key [(control x) (control c)] (defun print-message-about-exit () (interactive) (message "Use Control-x c!")))

;; Multiple cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)


(defun resolve-trivial-conflicts ()
  (interactive)
  (let ((compilation-buffer-name-function (lambda (mode) "*exec resolve-trivial-conflicts*")))
    (compile "resolve-trivial-conflicts -d")))

(provide 'init)
;;; init.el ends here
