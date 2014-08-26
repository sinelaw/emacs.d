(defun switch-to-other-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer)))

(require 'shell)
(define-key shell-mode-map [(shift return)] 'shell-resync-dirs)

(global-set-key [(control f4)] 'bury-buffer)
(global-set-key [pause] 'kill-this-buffer)

(global-set-key [(control b)] 'ido-switch-buffer)
(global-set-key [(control ? )] 'ido-switch-buffer)

(global-set-key [(meta g)] 'goto-line)

(global-set-key [(control x) (shift v) (shift k)] 'dvc-kill-all-buffers)

(global-set-key [(control shift ?s)] 'sort-lines)

(global-set-key [(meta ?\[) ?R] 'rtags-restart-process)

;(global-set-key [(meta ?i) ?s] 'ispell-comments-and-strings)

(require 'ido)
(let ((ido-mode-map (cdr ido-minor-mode-map-entry)))
  (define-key ido-mode-map [(control return)] 'ido-exit-minibuffer))

(require 'comint)
(define-key comint-mode-map [(control up)] 'comint-previous-matching-input-from-input)
(define-key comint-mode-map [(control down)] 'comint-next-matching-input-from-input)

(global-set-key [down] 'next-logical-line)
(global-set-key [up] 'previous-logical-line)

(global-set-key [(control meta r)] 'isearch-backward-regexp)
(global-set-key [(control meta s)] 'isearch-forward-regexp)

(require 'cc-mode)
(require 'python-mode)
(require 'haskell-mode)
(let ((newline-and-indent-modes (list c-mode-map haskell-mode-map emacs-lisp-mode-map)))
  (mapc (lambda (map) (define-key map [return] 'newline-and-indent)) newline-and-indent-modes)
  (define-key c-mode-map [return] 'newline-and-indent)
  (define-key py-mode-map [return] 'newline-and-indent))

(global-set-key [(control insert)] 'clipboard-kill-ring-save)
(global-set-key [(shift delete)] 'clipboard-kill-region)
(global-set-key [(shift insert)] 'clipboard-yank)

(global-set-key [(meta left)] 'backward-sexp)
;; (global-set-key [(meta shift left)] 'backward-sexp-mark)
(global-set-key [(meta right)] 'forward-sexp)
;; (global-set-key [(meta shift right)] 'forward-sexp-mark)

(global-set-key [(meta super right)] 'my-indent-region)
(global-set-key [(meta super left)] 'my-unindent-region)

(global-set-key [(control tab)] 'other-window)
(define-key (cdr ido-minor-mode-map-entry) [(control tab)] 'other-window)

(global-set-key [(control h) (control v)] 'customize-variable)

(global-set-key [(control z)] 'undo)
(global-set-key [(control shift z)] 'redo)

(global-set-key [(meta up)] (defun scroll-down-one () (interactive) (scroll-down 1)))
(global-set-key [(meta down)] (defun scroll-up-one () (interactive) (scroll-up 1)))

(global-set-key [(meta ?3)] 'comment-region)
(global-set-key [(meta ?4)] 'uncomment-region)

(global-set-key [f11] 'call-last-kbd-macro)
(global-set-key [(control f11)] 'assign-last-kbd-macro-to-key)

(global-set-key [(control x) ?c] 'save-buffers-kill-emacs)
(global-set-key [(control x) ?C] (lambda () (interactive)))

(global-set-key [(control x) (control c)] (defun print-message-about-exit () (interactive) (message "Use Control-x c!")))

(global-set-key [f4] 'next-error)
(global-set-key [(meta f4)] 'previous-error)
(global-set-key [(shift f4)] 'previous-error)


;(global-set-key [(control next)] 'position-stack-push)
;(global-set-key [(control prior)] 'position-stack-pop)

(defun new-shell ()
  (interactive)
  (let ((x (get-buffer "*shell*")))
    (when x
      (switch-to-buffer x)
      (rename-uniquely)))
  (shell))

(global-set-key [f2] 'shell)
(global-set-key [(control f2)] 'new-shell)
(global-set-key [(meta return)] 'dirs)
(global-set-key [f5] 'delete-other-windows)

(global-set-key [(control f9)] 'grep-find)
(global-set-key [(shift f9)] 'grep-find)

(global-set-key [f9] 'compile)
(global-set-key [f1] 'manual-entry)

(global-set-key [(control kp-subtract)] 'hs-hide-all)
(global-set-key [(control kp-add)] 'hs-show-all)

(global-set-key [kp-subtract] 'hs-hide-block)
(global-set-key [kp-add] 'hs-show-block)

(global-set-key [(control c) (control f1)] 'c-insert-header-protector)
(global-set-key [(control c) (control f2)] 'c-insert-header-includer)
(global-set-key [(control c) (control f3)] 'c-make-module)

(global-set-key [(control c) h t] 'tags-ext-make-tags)
(global-set-key [(meta ?.)] 'tags-ext-find-tag-at-point)

(global-set-key [(control meta f)] 'find-function)
(global-set-key [(control x) (control meta f)] 'find-function-on-key)

;(global-set-key [(control ? )] 'anything)

(global-set-key [f5] 'flymake-compile)
;(global-unset-key [f6])
(global-set-key [(shift f6)] 'flymake-display-err-menu-for-current-line)
(global-set-key [f6] 'flymake-goto-next-error)

(defun add-review-comment ()
  (interactive)
  (insert (concat comment-start "REVIEW(Eyal): "))
  (save-excursion (insert comment-end)))
(global-set-key [(meta shift ?r)] 'add-review-comment)

(defun add-response-comment ()
  (interactive)
  (insert (concat comment-start "Eyal: "))
  (save-excursion (insert comment-end)))
(global-set-key [(meta shift ?w)] 'add-response-comment)

(provide 'key-bindings)
