(defun switch-to-other-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer)))

(require 'shell)
(define-key shell-mode-map [(shift return)] 'shell-resync-dirs)

(global-set-key [(control f4)] 'bury-buffer)
(global-set-key [pause] 'kill-this-buffer)
(global-set-key [(meta delete)] 'kill-this-buffer)

(global-set-key [(control b)] 'ido-switch-buffer)
;(global-set-key [(control ? )] 'ido-switch-buffer)
(global-set-key [(control x) (control f)] 'ido-find-file)

(global-set-key [(meta g)] 'goto-line)

(define-key c-mode-map [(control d)] 'highlight-symbol-prev)
(define-key c-mode-map [(control f)] 'highlight-symbol-next)

(global-set-key [(control x) (shift v) (shift k)] 'dvc-kill-all-buffers)

(global-set-key [(control shift ?s)] 'sort-lines)

(global-set-key [(meta ?\[) ?R] 'rtags-restart-process)
;(global-set-key [(meta ?\*)] 'rtags-location-stack-back)
;(global-set-key [(meta ?\*)] 'pop-tag-mark)

;(global-set-key [(meta ?i) ?s] 'ispell-comments-and-strings)

;; (require 'ido)
;; (let ((ido-mode-map (cdr ido-minor-mode-map-entry)))
;;   (define-key ido-mode-map [(control return)] 'ido-exit-minibuffer))

(require 'comint)
(define-key comint-mode-map [(control up)] 'comint-previous-matching-input-from-input)
(define-key comint-mode-map [(control down)] 'comint-next-matching-input-from-input)

(global-set-key [down] 'next-logical-line)
(global-set-key [up] 'previous-logical-line)

(global-set-key [(control meta r)] 'isearch-backward-regexp)
(global-set-key [(control meta s)] 'isearch-forward-regexp)

(defun define-newline-and-indent-in-mode (mode-map)
  (define-key mode-map [return] 'newline-and-indent))

(define-newline-and-indent-in-mode emacs-lisp-mode-map)

;; (require 'haskell-mode)
;; (define-newline-and-indent-in-mode haskell-mode-map)
;; (define-key haskell-mode-map (kbd "C-c i") 'hindent/reformat-decl)

(require 'cc-mode)
(define-newline-and-indent-in-mode c-mode-map)

;; (require 'python-mode)
;; (define-newline-and-indent-in-mode py-mode-map)

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
;(define-key (cdr ido-minor-mode-map-entry) [(control tab)] 'other-window)

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

(defun recompile-in-compilation-buffer ()
  (interactive)
  (switch-to-buffer "*compilation*")
  (recompile))

(defun resolve-trivial-conflicts ()
  (interactive)
  (let ((compilation-buffer-name-function (lambda (mode) "*exec resolve-trivial-conflicts*")))
    (compile "resolve-trivial-conflicts -d")))

(global-set-key [(control f10)] 'resolve-trivial-conflicts)
(global-set-key [(control f9)] 'recompile-in-compilation-buffer)
(global-set-key [(shift f9)] 'grep-find)
(defun haskell-sort-align-imports ()
  (interactive)
  (save-excursion
    (haskell-navigate-imports)
    (haskell-sort-imports)
    (haskell-align-imports)))
(require 'haskell-mode)
(define-key haskell-mode-map [(shift f8)] 'haskell-sort-align-imports)
(define-key haskell-mode-map [f8] 'haskell-sort-align-imports)

(global-set-key [f9] 'compile)
(global-set-key [f1] 'manual-entry)

(defun buildsome-this-file (ext)
  (let* ((file-name (buffer-file-name))
         (o-name (concat "\"out/" (file-name-base file-name) "." ext "\"")))
    (unless (string-match "\\(.*\\)\\.c" file-name) (error "Not a .c file"))
    (let ((compilation-buffer-name-function (lambda (dummy) (concat "*" o-name "*"))))
      (compile (concat "buildsome --disable-color -j8 " o-name)))))

(defun buildsome-o ()
  (interactive)
  (buildsome-this-file "o"))
(global-set-key [(super f9)] 'buildsome-o)

(defun buildsome-s ()
  (interactive)
  (buildsome-this-file "s"))
(global-set-key [(shift super f9) ?s] 'buildsome-s)

(defun buildsome-E ()
  (interactive)
  (buildsome-this-file "E"))
(global-set-key [(shift super f9) ?E] 'buildsome-E)

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

(require 'git-timemachine)
(global-set-key [(super ?g) ?g] 'git-timemachine)
(global-set-key [(super ?g) ?s] 'magit-status)
(global-set-key [(super ?g) ?r] 'magit-rebase-step)
(global-set-key [(super ?g) ?b] 'magit-branch-manager)

; git-gutter-mode+
(global-set-key [(meta ?p)] 'git-gutter+-previous-hunk)
(global-set-key [(meta ?n)] 'git-gutter+-next-hunk)

(global-set-key [f7] 'helm-find)
(global-set-key [(shift f6)] 'helm-git-grep)
(global-set-key [f6] 'helm-ls-git-ls)
(global-set-key [(control f6)] 'switch-to-other-buffer)
(global-set-key (kbd "M-x") 'helm-M-x)
;(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(global-set-key (kbd "C-s-<left>") 'windmove-left)
(global-set-key (kbd "C-s-<right>") 'windmove-right)
(global-set-key (kbd "C-s-<up>") 'windmove-up)
(global-set-key (kbd "C-s-<down>") 'windmove-down)


(defun helm-find-files-navigate-forward (&rest args)
  (interactive)
  (if (file-directory-p (helm-get-selection))
      (helm-execute-persistent-action)
    (apply 'helm-maybe-exit-minibuffer args)))
(define-key helm-find-files-map [return] 'helm-find-files-navigate-forward)

(defun helm-find-files-navigate-back (&rest args)
  (interactive)
  (if (= (length helm-pattern) (length (helm-find-files-initial-input)))
      (helm-find-files-up-one-level 1)
    (apply 'helm-ff-delete-char-backward args)))
(define-key helm-find-files-map [backspace] 'helm-find-files-navigate-back)

(define-key helm-find-files-map [(control ?d)] (lambda () (interactive) (helm-select-nth-action 1)))

(global-set-key [C-mouse-4] 'text-scale-increase)
(global-set-key [C-mouse-5] 'text-scale-decrease)

(global-set-key (kbd "M-,") 'company-complete)

(provide 'key-bindings)
