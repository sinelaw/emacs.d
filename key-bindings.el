(global-set-key [(control z)] 'undo)
(global-set-key [(control b)] 'switch-to-buffer)
(global-set-key [(control tab)] 'other-window)
(global-set-key [(meta ?3)] 'comment-region)
(global-set-key [(meta ?4)] 'uncomment-region)
(global-set-key [(meta right)] 'forward-sexp)
(global-set-key [(meta left)] 'backward-sexp)
(global-set-key [(meta super right)] 'my-indent-region)
(global-set-key [(meta super left)] 'my-unindent-region)
(global-set-key [(meta up)] (lambda () (interactive) (scroll-down 1)))
(global-set-key [(meta down)] (lambda () (interactive) (scroll-up 1)))
(global-set-key [pause] 'kill-this-buffer)
(global-set-key [f1] 'man)
(global-set-key [f2] 'shell)
(global-set-key [f3] 'previous-error)
(global-set-key [f4] 'next-error)
(global-set-key [(control f4)] 'bury-buffer)
(global-set-key [f6] (lambda () (interactive) (switch-to-buffer (other-buffer))))
(global-set-key [f9] 'compile)
(global-set-key [(control f9)] 'ack)
(global-set-key [(shift f9)] 'grep-find)
(global-set-key [(control shift ?s)] 'sort-lines)
(global-set-key [down] 'next-logical-line)
(global-set-key [up] 'previous-logical-line)
(define-key python-mode-map [return] 'newline-and-indent)
(define-key haskell-mode-map [return] 'newline-and-indent)
(define-key c-mode-map [return] 'newline-and-indent)

(define-key c-mode-map [(control c) (control f1)] 'c-insert-header-protector)
(define-key c-mode-map [(control c) (control f2)] 'c-insert-header-includer)
(define-key c-mode-map [(control c) (control f3)] 'c-make-module)

(define-key comint-mode-map [(control up)] 'comint-previous-matching-input-from-input)
(define-key comint-mode-map [(control down)] 'comint-next-matching-input-from-input)

(defun my-c-mode-hook ()
  (c-toggle-auto-hungry-state 1)
  (c-toggle-hungry-state 1))

(add-hook 'c-mode-hook 'my-c-mode-hook)
(define-key c-mode-map [delete] 'c-hungry-delete-forward) ; instead of delete-forward-char
;; (define-key c-mode-map [backspace] 'c-hungry-delete-backwards) ; instead of c-electric-backspace

(setq aosp-str "aosp") ; "redbend-generic-android-4.2.2_r1")

(defun aosp-grep-all      ()    (interactive) (project-wide-grep aosp-str))
(defun aosp-grep-c        ()    (interactive) (project-wide-grep aosp-str "-iname \"*.[ch]\" -o -iname \"*.cpp\""))
(defun aosp-grep-mk       ()    (interactive) (project-wide-grep aosp-str "-iname \"*.mk\" -o -iname \"*Makefile*\""))
(defun aosp-grep-c-str    (str) (interactive "sString to grep: \n") (project-wide-grep aosp-str "-iname \"*.[ch]\" -o -iname \"*.cpp\"" str))
(defun aosp-grep-java     ()    (interactive) (project-wide-grep aosp-str "-iname \"*.java\""))
(defun aosp-grep-java-str (str) (interactive "sString to grep: \n") (project-wide-grep aosp-str "-iname \"*.java\"" str))
(global-set-key [(meta ?\]) ?a ?a] 'aosp-grep-all)
(global-set-key [(meta ?\]) ?a ?m] 'aosp-grep-mk)
(global-set-key [(meta ?\]) ?a ?c] 'aosp-grep-c)
(global-set-key [(meta ?\]) ?A ?c] 'aosp-grep-c-str)
(global-set-key [(meta ?\]) ?a ?j] 'aosp-grep-java)
(global-set-key [(meta ?\]) ?A ?j] 'aosp-grep-java-str)
(global-set-key [(meta ?\]) ?a ?L] 'make-logcat-buffers)

(defun src-grep-all () (interactive) (project-wide-grep "src"))
(global-set-key [(meta ?\]) ?S] 'src-grep-all)

(defun llvm-grep-all () (interactive) (project-wide-grep "llvm"))
(global-set-key [(meta ?\]) ?v] 'llvm-grep-all)

(defun elfs-grep-all () (interactive) (project-wide-grep "elfs"))
(global-set-key [(meta ?\]) ?e] 'elfs-grep-all)

(defun bluetooth-wrap-grep-all () (interactive) (project-wide-grep "bluetooth_wrap"))
(global-set-key [(meta ?\]) ?w] 'bluetooth-wrap-grep-all)

(defun com-grep-all () (interactive) (project-wide-grep "com" nil nil ""))
(global-set-key [(meta ?\]) ?c] 'com-grep-all)

(defun ghc-grep-all      ()    (interactive) (project-wide-grep "ghc"))
(global-set-key [(meta ?\]) ?g ?a] 'ghc-grep-all)

(defun lamdu-grep-all    ()    (interactive) (project-wide-grep "lamdu"))
(global-set-key [(meta ?\]) ?l] 'lamdu-grep-all)

(defun buildsome-grep-all    ()    (interactive) (project-wide-grep "buildsome"))
(global-set-key [(meta ?\]) ?b] 'buildsome-grep-all)

(define-key hexl-mode-map [(control b)] 'switch-to-buffer)

(global-set-key [(meta ?w)] 'clipboard-kill-ring-save)
(global-set-key [(control insert)] 'clipboard-kill-ring-save)
(global-set-key [(control ?w)] 'clipboard-kill-region)
(global-set-key [(shift delete)] 'clipboard-kill-region)
(global-set-key [(control ?y)] 'clipboard-yank)
(global-set-key [(shift insert)] 'clipboard-yank)

(define-key comint-mode-map [(meta shift return)] 'dirs)

(provide 'key-bindings)
