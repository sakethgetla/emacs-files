
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(elpy-enable)
(global-linum-mode t)


(global-set-key (kbd "C-c m c") 'mc/edit-lines)

(global-set-key (kbd "C-'") (kbd "C-y")) ;;paste

(global-set-key (kbd "C-;") (kbd "M-w")) ;;copy
(global-set-key (kbd "C-:") (kbd "C-e C-S-a M-w"))


(global-set-key (kbd "C-S-k") (kbd "C-a C-k"))

(global-set-key (kbd "C-j") (kbd "C-u 0 C-k"))
(global-set-key (kbd "C-S-k") (kbd "C-a C-k"))

(global-set-key (kbd "C-,") "(")
(global-set-key (kbd "C-.") ")")

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(inhibit-startup-screen t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/"))))
 '(package-selected-packages (quote (multiple-cursors elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
