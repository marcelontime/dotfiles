;;; Provide global maps that aren't specific to any mode or package.

(defun air--pop-to-file (path)
  (find-file-other-window path))

(defun air-pop-to-org-work ()
  (interactive)
  (air--pop-to-file "~/Dropbox/org/work.org"))

(defun air-pop-to-org-home ()
  (interactive)
  (air--pop-to-file "~/Dropbox/org/home.org"))

(defun air-pop-to-org-vault ()
  (interactive)
  (air--pop-to-file "~/Dropbox/org/vault.gpg"))

(define-key global-map (kbd "C-c t w") 'air-pop-to-org-work)
(define-key global-map (kbd "C-c t h") 'air-pop-to-org-home)
(define-key global-map (kbd "C-c t v") 'air-pop-to-org-vault)
(define-key global-map (kbd "C-c t a") 'org-agenda-list)
(define-key global-map (kbd "C-x C-q") 'kill-emacs)
(define-key global-map (kbd "C-c C-u") 'insert-char) ;; "u" for Unicode, get it?
(define-key global-map (kbd "C-c l")   'dictionary-lookup-definition)
(define-key global-map (kbd "C-c d f") 'find-name-dired)

;; C-v is "visual block" in normal mode, but use it for "paste" in insert mode.
(when (equal system-type 'darwin)
  (evil-define-key 'insert global-map (kbd "C-v") 'yank))

(evil-define-key 'normal global-map (kbd "C-M-f") 'helm-projectile-find-file)

(provide 'init-maps)
;;; init-maps.el ends here