(package-initialize)

(set-default-font "Inconsolata 22")
(set-background-color "black")
(set-background-color "white")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'darkokai t)
(ns-toggle-toolbar)
(global-hl-line-mode)


(global-set-key (kbd "C-;") 'execute-extended-command)
(global-set-key (kbd "C-o") 'next-multiframe-window)
(global-set-key (kbd "C-S-o") 'previous-multiframe-window)


(load "~/.emacs.d/testing.el")
(load "~/.emacs.d/org-hacks.el")


(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

