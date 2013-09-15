(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-default-style (quote ((c-mode . "linux") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-offsets-alist nil)
 '(compile-command "make")
 '(custom-file "~/.emacs.d/custom-el.el")
 '(dabbrev-case-fold-search nil)
 '(etags-table-search-up-depth 10)
 '(global-whitespace-mode nil)
 '(grep-command "grep --color=never -nH -e ")
 '(grep-find-command (quote ("PAGER= git grep -n -e ")))
 '(haskell-mode-hook (quote (turn-on-haskell-indentation turn-on-font-lock turn-on-haskell-doc-mode)))
 '(ido-everywhere t)
 '(ido-ignore-directories (quote ("\\`CVS/" "\\`\\.\\./" "\\`\\./" "\\`.git/")))
 '(ido-ignore-files (quote ("\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./" ".hi$" ".o$")))
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(show-paren-mode t)
 '(show-paren-style (quote expression)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 163 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(hc-trailing-whitespace ((t (:background "Red")))))

(provide 'custom-el)
