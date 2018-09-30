;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------
(setq ring-bell-function 'ignore)

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    material-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(defvar myPackages
  '(better-defaults
    elpy ;; add the elpy package
    material-theme))

(elpy-enable)

(setq elpy-rpc-python-command "python3")


;;  (require 'flymake-python-pyflakes)
;;  (add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
;;
;;  (setq flymake-python-pyflakes-executable "flake8")
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'after-init-hook #'global-flycheck-mode)
;;
;;(when (require 'flycheck nil t)
;;  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;  (add-hook 'elpy-mode-hook 'flycheck-mode))

(defun beginning-of-line-or-indentation ()
  "move to beginning of line, or indentation"
  (interactive)
  (if (bolp)
    (beginning-of-line-text)
    (beginning-of-line)))



;;;;;;;;;;;;;;;;


(global-set-key (kbd "C-a") 'beginning-of-line-or-indentation)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "M-n")
    (lambda () (interactive) (next-line 8)))

(global-set-key (kbd "M-p")
    (lambda () (interactive) (previous-line 8)))

(tool-bar-mode -1)

(global-unset-key "\C-z")
(global-set-key "\C-z" 'advertised-undo)


(global-set-key (kbd "M-s") (kbd "M-b M-d"))

(global-set-key (kbd "C-c m c") 'mc/edit-lines)

(global-set-key (kbd "C-'") (kbd "C-y")) ;;paste

(global-set-key (kbd "C-;") (kbd "M-w")) ;;copy
(global-set-key (kbd "C-:") (kbd "C-e M-S-m M-w"))

;;(global-set-key (kbd "C-c C-c") ((kbd "C-c C-m C-a") "#"))

(global-set-key (kbd "C-S-k") (kbd "C-a C-k"))

(global-set-key (kbd "C-j") (kbd "C-u 0 C-k"))


(global-set-key (kbd "C-i") (kbd "C-e RET"))


(global-set-key (kbd "C-S-i") 'comment-or-uncomment-region)

(global-set-key (kbd "C-,") "(")
(global-set-key (kbd "C-.") ")")

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#263238"))
 '(custom-enabled-themes (quote (material-light)))
 '(custom-safe-themes
   (quote
    ("a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" default)))
 '(fci-rule-color "#37474f")
 '(hl-sexp-background-color "#1c1f26")
 '(package-selected-packages
   (quote
    (flycheck org etable autodisass-java-bytecode expand-region flymake-python-pyflakes elpy material-theme better-defaults)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
