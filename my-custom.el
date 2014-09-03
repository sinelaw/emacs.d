(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 8)
 '(c-macro-prompt-flag t)
 '(dabbrev-case-distinction t)
 '(dabbrev-case-fold-search nil)
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote top))
 '(enable-recursive-minibuffers t)
 '(flycheck-checkers (quote (ada-gnat asciidoc make-based-checker cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint d-dmd elixir emacs-lisp emacs-lisp-checkdoc erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck haml handlebars haskell-ghc haskell-hlint html-tidy javascript-jshint javascript-eslint javascript-gjslint json-jsonlint less lua make perl perl-perlcritic php php-phpmd php-phpcs puppet-parser puppet-lint python-flake8 python-pylint racket rst rst-sphinx ruby-rubocop ruby-rubylint ruby ruby-jruby rust sass scala scala-scalastyle scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim tex-chktex tex-lacheck texinfo verilog-verilator xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby)))
 '(flycheck-disabled-checkers (quote (c/c++-cppcheck c/c++-gcc c/c++-clang)))
 '(flycheck-display-errors-delay 0)
 '(flycheck-display-errors-function (quote flycheck-display-error-messages))
 '(flymake-gui-warnings-enabled nil)
 '(flymake-no-changes-timeout 2)
 '(flymake-start-syntax-check-on-find-file nil)
 '(global-whitespace-mode nil)
 '(haskell-indent-spaces 4)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(ido-auto-merge-delay-time 60)
 '(ido-create-new-buffer (quote prompt))
 '(ido-enabled nil t)
 '(ido-everywhere t)
 '(ido-file-extensions-order (quote (".py" ".c" "Makefile" ".s" ".S")))
 '(ido-ignore-buffers (quote ("\\` " "\\*Messages\\*" "\\*Ediff Registry\\*" "_flymake")))
 '(ido-ignore-files (quote ("\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./" "\\.pyc$" "\\.o$" "\\.hi$" "\\.dyn_hi$" "\\.dyn_o$" "\\.git/" "\\.gitignore$" "^AUTO_" "_flymake")))
 '(ido-max-prospects 60)
 '(ido-max-window-height 10)
 '(ido-max-work-directory-list 30)
 '(ido-max-work-file-list 50)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode t)
 '(isearch-lazy-highlight t)
 '(lazy-highlight-initial-delay 0)
 '(p4-use-p4config-exclusively t)
 '(rtags-completions-enabled t)
 '(rtags-path "~/.emacs.d")
 '(safe-local-variable-values (quote ((test-case-name . invective\.test) (haskell-hugs-program-args "+." "-98") (test-case-name . "nevow.test.test_url") (test-case-name . nevow\.test) (test-case-name . formless\.test\.test_freeform) (test-case-name . twisted\.names\.test\.test_dns) (test-case-name . twisted\.test\.test_context) (test-case-name . twisted\.mail\.test\.test_imap) (test-case-name . twisted\.conch\.test\.test_conch) (test-case-name . twisted\.test\.test_protocols) (test-case-name . combinator\.test\.test_sysenv) (test-case-name . twisted\.conch\.test\.test_filetransfer) (test-case-name . twisted\.trial\.test\.test_script) (test-case-name . twisted\.test\.test_application) (test-case-name . twisted\.test\.test_amp) (test-case-name . twisted\.mail\.test\.test_mail) (test-case-name . twisted\.test\.test_iutils) (test-case-name . twisted\.conch\.test\.test_recvline) (test-case-name . twisted\.trial\.test\.test_util) (test-case-name . twisted\.test\.test_reflect) (test-case-name . twisted\.conch\.test\.test_manhole) (test-case-name . twisted\.trial\.test\.test_runner) (test-case-name . twisted\.trial\.test\.test_tests) (test-case-name . twisted\.test\.test_modules) (test-case-name . twisted\.test\.test_banana) (test-case-name . twisted\.test\.test_jelly) (test-case-name . twisted\.test\.test_abstract) (test-case-name . combinator) (test-case-name . twisted\.test\.test_logfile) (test-case-name . twisted\.test\.test_udp) (test-case-name . twisted\.conch\.test\.test_insults) (test-case-name . twisted\.test\.test_threadpool) (test-case-name . twisted\.test\.test_task) (test-case-name . twisted\.test\.test_log) (test-case-name . twisted\.test\.test_spread) (test-case-name . twisted\.test\.test_failure) (test-case-name . twisted\.test\.test_components) (test-case-name . twisted\.test\.test_loopback) (test-case-name . twisted\.test\.test_tcp) (test-case-name . twisted\.test\.test_ftp) (test-case-name . twisted\.test\.test_defer) (test-case-name . twisted\.web\.test\.test_http) (test-case-name . twisted\.test\.test_stdio\.StandardInputOutputTestCase\.testProducer) (test-case-name . twisted\.test\.test_factories) (test-case-name . twisted\.test\.test_process) (test-case-name . twisted\.python\.threadable) (test-case-name . twisted\.test\.test_persisted) (test-case-name . twisted\.test\.test_paths) (test-case-name . twisted\.web\.test\.test_web) (test-case-name . twisted\.test\.test_internet))))
 '(shell-input-autoexpand t)
 '(show-paren-style (quote expression))
 '(show-trailing-whitespace t)
 '(twisted-dev-confirm-run-all t)
 '(twisted-dev-directory "~/devel/packages/divmod/svn/twisted/trunk/")
 '(twisted-dev-scratch-directory "~/devel/scratch/test")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-separator "/")
 '(uniquify-strip-common-suffix nil)
 '(version-control (quote never))
 '(whitespace-style (quote (trailing tabs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(CTX-SWITCH-face ((t (:background "#AA22AA" :foreground "black"))))
 '(ctx-switch-face ((t (:background "#440044" :foreground "white"))))
 '(diff-added ((t (:inherit diff-changed :foreground "green"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "red"))))
 '(flymake-errline ((t (:inherit nil :background "#440000"))))
 '(flymake-warnline ((t (:background "#444400"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background dark)) (:foreground "red2"))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face)) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "grey"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background dark)) (:foreground "cyan2"))))
 '(font-lock-keyword-face ((nil (:foreground "red"))))
 '(font-lock-preprocessor-face ((t (:foreground "green3"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "cyan"))))
 '(font-lock-type-face ((nil (:foreground "green"))))
 '(ido-first-match ((t (:background "darkblue" :weight bold))))
 '(ido-only-match ((((class color)) (:background "darkgreen" :foreground "white"))))
 '(mode-line ((((class color) (min-colors 88)) (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))
 '(mode-line-inactive ((default (:inherit mode-line :slant italic)) (((class color) (min-colors 88) (background dark)) (:background "grey20" :foreground "grey80" :box (:line-width -1 :color "grey40") :weight light))))
 '(py-builtins-face ((t (:foreground "#FF6600"))))
 '(show-paren-match ((((class color) (background dark)) (:background "#332266")))))

(provide 'my-custom)
