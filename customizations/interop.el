;; Binding for a quick git push

(defun git-commit-and-push ()
  "Commit -a -m \"-\" and git push origin master "
  (interactive)
  (if (y-or-n-p "Commit and push?")
      (progn
	;; code to do something here
	(save-buffer)
	(shell-command "git commit -a -m \"--\"")
	(shell-command "git push origin master"))
    )
  )

(global-set-key (kbd "C-x p") 'git-commit-and-push)

(global-set-key (kbd "<f1>") 'eshell)


;; magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
;; "C-c M-g" stuff
;;(global-magit-file-mode)


