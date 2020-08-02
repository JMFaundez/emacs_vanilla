
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Packages 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Add repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Matlab
(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
       auto-mode-alist))

;; Nek5000
(add-to-list 'auto-mode-alist '("\\.usr\\'" . fortran-mode))
(add-to-list 'auto-mode-alist '("\\.par\\'" . fortran-mode))
(add-to-list 'auto-mode-alist '("\\SIZE\\'" . fortran-mode))

;; Evil
	;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))
	;; Enable Evil
(require 'evil)
(evil-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General Tweaks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set frame name
(setq frame-title-format "Emacs")

;; Show column number too (bottom)
(column-number-mode)

;; Show line number
(global-linum-mode) 

;; Disable frame menu/tool/scroll bar
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Show matching opening or closing brace
(show-paren-mode)

;; Move between windows easily (shift + arrows)
(windmove-default-keybindings)

;; Good autocomplete
(ido-mode t)

;; Different theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/moe-theme-1.0.0/")
(load-theme 'moe-light t)

;; Adjust text and soft returns
(add-hook 'text-mode-hook #'visual-line-mode)
(global-visual-line-mode t)
;; (auto-fill-mode nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Added by emacs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
