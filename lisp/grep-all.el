(defun string-match-group (str group-num)
  (substring str (match-beginning group-num) (match-end group-num)))

(defun sane-match (regexp str groups)
  (string-match regexp str)
  (mapcar (lambda (group-num) (string-match-group str group-num)) groups))

(defun project-wide-grep (component-name &optional find-args to-find grep-prefix)
  (interactive "sDirectory component name: \n")
  (let*
      ((postfix
        (car (sane-match (concat ".*?/" component-name "/\\(.*\\)") default-directory '(1))))
       (escape-path (replace-regexp-in-string "[^/]+" ".." postfix))
       (sym (if (eq nil to-find) (thing-at-point 'symbol) to-find))
       (prefix (if (eq nil grep-prefix) "git" grep-prefix))
       (cmd (concat "find " escape-path "*" (if (eq nil find-args) "" (concat " \\( " find-args " \\)")) " -type f -print0 | xargs -0 " prefix " grep --color=never -n " sym)))
    (grep-find cmd)))

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

(defun ghc-grep-all () (interactive) (project-wide-grep "ghc"))
(global-set-key [(meta ?\]) ?g] 'ghc-grep-all)

(defun llvm-grep-all () (interactive) (project-wide-grep "llvm"))
(global-set-key [(meta ?\]) ?v] 'llvm-grep-all)

(defun algow-grep-all () (interactive) (project-wide-grep "AlgoW"))
(global-set-key [(meta ?\]) ?w] 'algow-grep-all)

(defun elfs-grep-all () (interactive) (project-wide-grep "elfs"))
(global-set-key [(meta ?\]) ?e] 'elfs-grep-all)

;; (defun bluetooth-wrap-grep-all () (interactive) (project-wide-grep "bluetooth_wrap"))
;; (global-set-key [(meta ?\]) ?w] 'bluetooth-wrap-grep-all)

(defun com-grep-all () (interactive) (project-wide-grep "com" nil nil ""))
(global-set-key [(meta ?\]) ?c] 'com-grep-all)

(defun lamdu-grep-all    ()    (interactive) (project-wide-grep "lamdu"))
(global-set-key [(meta ?\]) ?l] 'lamdu-grep-all)

(defun buildsome-grep-all    ()    (interactive) (project-wide-grep "buildsome"))
(global-set-key [(meta ?\]) ?b] 'buildsome-grep-all)

(provide 'grep-all)
