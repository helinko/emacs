;; jotain tällasta, nyt se menee vaan buffer-Xslokaaliksi
;;(set-variable 'fill-column 70)

(setq truncate-lines 'XS1)


;; increase font size for better readability
(set-face-attribute 'default nil :height 120)

;; (defun git-bash-windows-setup () (interactive)
;;   (setq explicit-shell-file-name
;; 	     )
;;   (setq shell-file-name explicit-shell-file-name)           
;;   (setenv "SHELL" shell-file-name)
;;   (add-to-list 'exec-path "C:/Program Files/Git/"))

;; (if (equal system-type 'windows-nt)
;;     (git-bash-windows-setup)
;; )

(defun udf-windows-setup ()
  (setq explicit-shell-file-name "C:\\cygwin64\\bin\\bash.exe")
  (setq shell-file-name explicit-shell-file-name)
  (setq explicit-bash.exe-args '("--login" "-i"))
  (setenv "SHELL" shell-file-name)
  (setenv "PATH" (concat "C:\\cygwin64\\bin" ";" (getenv "PATH")))
  (setenv "PATH" (concat  ".;" (getenv "PATH")))
  (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m))

(if (eq system-type 'windows-nt)
    (udf-windows-setup))


;; (defun udf-windows-setup ()
;;   (setq explicit-shell-file-name "C:\\Program Files\\Git\\bin\\sh.exe")
;;   (setq shell-file-name "sh")
;;   (setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
;;   (setenv "SHELL" shell-file-name)
;;   (setenv "PATH" (concat "C:\\Program Files\\Git" ";" (getenv "PATH")))
;;   (setenv "PATH" (concat  ".;" (getenv "PATH")))
;;   (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m))

;; (if (eq system-type 'windows-nt)
;;     (udf-windows-setup))




