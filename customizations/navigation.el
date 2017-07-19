;; instead of ‘<2>’, ‘<3>’, etc. use directory as "uniquifier" of buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Turn on recent file mode so that you can more easily switch to
;; recently edited files when you first start emacs
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 40)

(ido-mode t)

;; This allows partial matches, e.g. "tl" will match "Tyrion Lannister"
(setq ido-enable-flex-matching t)

;; Not sure where this would ever be handy as a rule
(setq ido-use-filename-at-point nil)

;; Turn this to -1 if matching to multiple directories gets annoying.
(setq ido-auto-merge-work-directories-length 0)

;; Includes buffer names of recently open files, even if they're not
;; open now
(setq ido-use-virtual-buffers t)

;; This enables ido in all contexts where it could be useful, not just
;; for selecting buffer and file names
(ido-ubiquitous-mode 1)

;; Shows a list of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "M-o") 'other-window)
;; Enhances M-x to allow easier execution of commands. Provides
;; a filterable list of possible commands in the minibuffer
;; http://www.emacswiki.org/emacs/Smex
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; Scroll up and down are kinda backwards in emacs lingo. Cursor will follow if it would be left outside of the screen, but will otherwise be left where it was.
(global-set-key (kbd "C-å") 'scroll-down-line)
(global-set-key (kbd "C-ö") 'scroll-up-line)

;; At some point do these 'other window versions' too
;(global-set-key (kbd "C-M-å") '(scroll-down-line))
;(global-set-key (kbd "C-M-ö") 'scroll-up-line)



;; projectile everywhere!
;(projectile-global-mode)
