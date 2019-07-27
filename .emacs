
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(set-default-font "Inconsolata 22")
(set-background-color "black")
(set-background-color "white")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'darkokai)
(ns-toggle-toolbar)
(global-hl-line-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("82b5e8962e15b145fe0c37612ef44b1fec025cf2aa6af31c87d0b37f8b5ae6e0" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
