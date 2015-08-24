(add-hook 'comint-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'c-mode-common-hook (defun choose-c-style () (interactive) (c-set-style "stroustrup")))
;; (add-hook 'c-mode-common-hook 'flymake-mode)
(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'c-mode-common-hook 'c-toggle-hungry-state)
;(add-hook 'font-lock-mode-hook 'font-lock-fontify-buffer)

(add-hook 'shell-mode-hook (lambda () (interactive)
                             (setq-default shell-dirstack-query "pwd")))

(provide 'mode-hooks)
