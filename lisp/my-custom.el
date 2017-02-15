(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "red" "green" "yellow" "blue" "magenta" "cyan" "white"])
 '(c-basic-offset 8)
 '(c-macro-prompt-flag t)
 '(case-fold-search t)
 '(column-enforce-column 100)
 '(completion-ignored-extensions
   (quote
    (".hi" ".p_hi" ".dyn_hi" ".i_hi" ".p_o" ".dyn_o" ".i_o" ".o" "~" ".bin" ".lbin" ".so" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".svn/" ".hg/" ".git/" ".bzr/" "CVS/" "_darcs/" "_MTN/" ".fmt" ".tfm" ".class" ".fas" ".lib" ".mem" ".x86f" ".sparcf" ".dfsl" ".pfsl" ".d64fsl" ".p64fsl" ".lx64fsl" ".lx32fsl" ".dx64fsl" ".dx32fsl" ".fx64fsl" ".fx32fsl" ".sx64fsl" ".sx32fsl" ".wx64fsl" ".wx32fsl" ".fasl" ".ufsl" ".fsl" ".dxl" ".lo" ".la" ".gmo" ".mo" ".toc" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".pyc" ".pyo")))
 '(custom-safe-themes
   (quote
    ("b7e38c2b835e8b46cb51beb222ec85310a2b63135d4abbca44ecf533706fa6aa" default)))
 '(dabbrev-case-distinction t)
 '(dabbrev-case-fold-search nil)
 '(dired-omit-extensions
   (quote
    (".o" ".hi" ".p_hi" ".p_o" ".i_o" ".i_hi" ".dyn_o" ".dyn_hi" "~" ".bin" ".lbin" ".so" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".svn/" ".hg/" ".git/" ".bzr/" "CVS/" "_darcs/" "_MTN/" ".fmt" ".tfm" ".class" ".fas" ".lib" ".mem" ".x86f" ".sparcf" ".dfsl" ".pfsl" ".d64fsl" ".p64fsl" ".lx64fsl" ".lx32fsl" ".dx64fsl" ".dx32fsl" ".fx64fsl" ".fx32fsl" ".sx64fsl" ".sx32fsl" ".wx64fsl" ".wx32fsl" ".fasl" ".ufsl" ".fsl" ".dxl" ".lo" ".la" ".gmo" ".mo" ".toc" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".pyc" ".pyo" ".idx" ".lof" ".lot" ".glo" ".blg" ".bbl" ".cp" ".cps" ".fn" ".fns" ".ky" ".kys" ".pg" ".pgs" ".tp" ".tps" ".vr" ".vrs")))
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote top))
 '(eclim-eclipse-dirs
   (quote
    ("~/Downloads/eclipse" "/Applications/eclipse" "/usr/lib/eclipse" "/usr/local/lib/eclipse" "/usr/share/eclipse")))
 '(eclim-executable "~/Downloads/eclipse/eclim")
 '(enable-recursive-minibuffers t)
 '(erc-nick "sinelaw")
 '(flycheck-checkers
   (quote
    (ada-gnat asciidoc make-based-checker cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint d-dmd elixir emacs-lisp emacs-lisp-checkdoc erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck haml handlebars haskell-ghc haskell-hlint html-tidy javascript-jshint javascript-eslint javascript-gjslint json-jsonlint less lua make perl perl-perlcritic php php-phpmd php-phpcs puppet-parser puppet-lint python-flake8 python-pylint racket rst rst-sphinx ruby-rubocop ruby-rubylint ruby ruby-jruby rust sass scala scala-scalastyle scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim tex-chktex tex-lacheck texinfo verilog-verilator xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby)))
 '(flycheck-disabled-checkers
   (quote
    (c/c++-cppcheck c/c++-gcc c/c++-clang python-pylint)))
 '(flycheck-display-errors-delay 0)
 '(flycheck-display-errors-function (quote flycheck-display-error-messages))
 '(flycheck-shellcheck-excluded-warnings (quote ("SC2086" "SC2046")))
 '(flymake-gui-warnings-enabled nil)
 '(flymake-no-changes-timeout 2)
 '(flymake-start-syntax-check-on-find-file nil)
 '(gdb-non-stop-setting nil)
 '(git-commit-summary-max-length 72)
 '(git-gutter+-disabled-modes (quote (haskell-mode)))
 '(global-git-gutter+-mode t)
 '(global-whitespace-mode t)
 '(graphviz-dot-view-command "display %s")
 '(haskell-complete-module-preferred
   (quote
    ("Data.ByteString" "Data.ByteString.Lazy" "Data.Conduit" "Data.Function" "Data.List" "Data.Map" "Data.Maybe" "Data.Monoid" "Data.Ord")))
 '(haskell-indent-spaces 4)
 '(haskell-indentation-ifte-offset 4)
 '(haskell-indentation-layout-offset 4)
 '(haskell-indentation-left-offset 4)
 '(haskell-indentation-starter-offset 4)
 '(haskell-indentation-where-post-offset 4)
 '(haskell-indentation-where-pre-offset 4)
 '(haskell-interactive-mode-eval-mode (quote haskell-mode))
 '(haskell-interactive-mode-eval-pretty nil)
 '(haskell-interactive-mode-include-file-name nil)
 '(haskell-interactive-popup-errors nil)
 '(haskell-notify-p t)
 '(haskell-process-args-cabal-repl (quote ("--ghc-option=-ferror-spans" "--with-ghc=ghci-ng")))
 '(haskell-process-args-ghci (quote ("-ferror-spans")))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-generate-tags nil)
 '(haskell-process-log t)
 '(haskell-process-path-ghci "ghci-ng")
 '(haskell-process-reload-with-fbytecode nil)
 '(haskell-process-suggest-haskell-docs-imports t)
 '(haskell-process-suggest-hayoo-imports nil)
 '(haskell-process-suggest-hoogle-imports t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote stack-ghci))
 '(haskell-process-use-presentation-mode t)
 '(haskell-stylish-on-save nil)
 '(haskell-tags-on-save nil)
 '(helm-autoresize-mode t)
 '(helm-boring-file-regexp-list
   (quote
    ("\\.hi$" "\\.o$" "\\.p_o$" "\\.p_hi$" "\\.i_hi$" "\\.i_o$" "\\.dyn_o$" "\\.dyn_hi$" "~$" "\\.bin$" "\\.lbin$" "\\.so$" "\\.a$" "\\.ln$" "\\.blg$" "\\.bbl$" "\\.elc$" "\\.lof$" "\\.glo$" "\\.idx$" "\\.lot$" "\\.svn$" "\\.hg$" "\\.git$" "\\.bzr$" "CVS$" "_darcs$" "_MTN$" "\\.fmt$" "\\.tfm$" "\\.class$" "\\.fas$" "\\.lib$" "\\.mem$" "\\.x86f$" "\\.sparcf$" "\\.dfsl$" "\\.pfsl$" "\\.d64fsl$" "\\.p64fsl$" "\\.lx64fsl$" "\\.lx32fsl$" "\\.dx64fsl$" "\\.dx32fsl$" "\\.fx64fsl$" "\\.fx32fsl$" "\\.sx64fsl$" "\\.sx32fsl$" "\\.wx64fsl$" "\\.wx32fsl$" "\\.fasl$" "\\.ufsl$" "\\.fsl$" "\\.dxl$" "\\.lo$" "\\.la$" "\\.gmo$" "\\.mo$" "\\.toc$" "\\.aux$" "\\.cp$" "\\.fn$" "\\.ky$" "\\.pg$" "\\.tp$" "\\.vr$" "\\.cps$" "\\.fns$" "\\.kys$" "\\.pgs$" "\\.tps$" "\\.vrs$" "\\.pyc$" "\\.pyo$" "/\\.$" "/\\.\\.$")))
 '(helm-command-prefix-key "s-x")
 '(helm-ff-skip-boring-files t)
 '(hindent-style "chris-done")
 '(ido-auto-merge-delay-time 60)
 '(ido-create-new-buffer (quote prompt))
 '(ido-enabled nil t)
 '(ido-everywhere t)
 '(ido-file-extensions-order (quote (".py" ".c" "Makefile" ".s" ".S")))
 '(ido-ignore-buffers
   (quote
    ("\\` " "\\*Messages\\*" "\\*Ediff Registry\\*" "_flymake" "*Flycheck error messages*")))
 '(ido-ignore-files
   (quote
    ("\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./" "\\.pyc$" "\\.o$" "\\.hi$" "\\.dyn_hi$" "\\.dyn_o$" "\\.git/" "\\.gitignore$" "^AUTO_" "_flymake")))
 '(ido-max-prospects 60)
 '(ido-max-window-height 10)
 '(ido-max-work-directory-list 30)
 '(ido-max-work-file-list 50)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(intero-debug nil)
 '(intero-package-version "0.1.16")
 '(intero-repl-no-build t)
 '(intero-repl-no-load t)
 '(isearch-lazy-highlight t)
 '(lazy-highlight-initial-delay 0)
 '(magit-diff-options (quote ("--function-context")))
 '(magit-log-arguments (quote ("-n256" "--graph" "--decorate")))
 '(magit-log-auto-more t)
 '(magit-log-remove-graph-args (quote ("--follow" "--grep" "-G" "-S" "-L" "--reverse")))
 '(org-support-shift-select t)
 '(p4-use-p4config-exclusively t)
 '(pylint-options (quote ("--reports=n" "--output-format=parseable" "-E")))
 '(rtags-completions-enabled t)
 '(rtags-path "~/.emacs.d")
 '(rtags-rc-log-enabled t)
 '(safe-local-variable-values
   (quote
    ((org-latex-hyperref-template)
     (haskell-process-args-ghci "ghci" "--with-ghc" "ghci-ng")
     (haskell-process-path-ghci . "stack")
     (haskell-process-type . ghci)
     (c-indent-level . 4)
     (include-header-prefix . "ELFS__")
     (eval setq dir-local-curdir
           (file-name-directory
            (let
                ((d
                  (dir-locals-find-file ".")))
              (if
                  (stringp d)
                  d
                (car d)))))
     (hindent-style . "chris-done")
     (hindent-style . "gibiansky")
     (hindent-style . "johan-tibell"))))
 '(session-use-package t nil (session))
 '(shell-input-autoexpand t)
 '(show-paren-style (quote expression))
 '(show-trailing-whitespace t)
 '(sublimity-map-size 0)
 '(sublimity-scroll-drift-length 5)
 '(tags-case-fold-search nil)
 '(tags-revert-without-query t)
 '(twisted-dev-confirm-run-all t)
 '(twisted-dev-directory "~/devel/packages/divmod/svn/twisted/trunk/")
 '(twisted-dev-scratch-directory "~/devel/scratch/test")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-separator "/")
 '(uniquify-strip-common-suffix nil)
 '(version-control (quote never))
 '(whitespace-action (quote (auto-cleanup)))
 '(whitespace-style (quote (trailing tabs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(column-marker-1 ((t (:background "#444"))))
 '(diff-added ((t (:inherit diff-changed :foreground "green"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "red"))))
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
 '(secondary-selection ((t (:background "#111133"))))
 '(shadow ((t (:foreground "grey70"))))
 '(show-paren-match ((((class color) (background dark)) (:background "#332266")))))

(provide 'my-custom)
