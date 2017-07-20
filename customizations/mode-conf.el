;; default mode is org-mode
(setq-default major-mode 'org-mode)

;; for .tex files turn on outline-minormode
(add-hook 'LaTeX-mode-hook 'outline-minor-mode)

;; keybinding for outline-toggle-children when latex-mode and outline-minor-mode is on
;; outline-minor-mode-prefix


(add-hook 'outline-minor-mode-hook (lambda ()
				     (local-set-key (kbd "<tab>") 'outline-toggle-children)))
