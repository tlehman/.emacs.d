(package-initialize)

(set-default-font "Inconsolata 22")
(set-background-color "black")
(set-background-color "white")
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

; No Tabs
(setq indent-tabs-mode nil)
(infer-indentation-style)


(ns-toggle-toolbar)
(global-hl-line-mode)
(when window-system (set-frame-size (selected-frame) 100 50))

(global-set-key (kbd "C-;") 'execute-extended-command)
(global-set-key (kbd "C-o") 'next-multiframe-window)
(global-set-key (kbd "C-S-o") 'previous-multiframe-window)


(require 'org)
(require 'ob-C)
(require 'ob-ruby)
(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'auto-mode-alist '("\\.rbi\\'" . ruby-mode))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(load-theme 'monokai t)
(load "~/.emacs.d/testing.el")
(load "~/.emacs.d/time.el")
(load "~/.emacs.d/org-hacks.el")
(load "~/.emacs.d/ssh-hacks.el")
(load "~/.emacs.d/markdown-mode-20190802.2215.el")

					; fast recursive search (works remote through tramp, needs remote rg installation)
(require 'ripgrep)
(global-set-key (kbd "s-/") 'ripgrep-regexp)
(setq ripgrep-executable "/usr/bin/rg")

