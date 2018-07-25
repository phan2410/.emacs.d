;; Add Repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
         '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(setq package-enable-at-startup nil)
(package-initialize)

;; Load An's favorite theme
(add-to-list 'load-path "~/.emacs.d/themes/elisp" t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes" t)
(load-theme 'monokai t)


;;Startup Config
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)

(if (string= system-type 'windows-nt)
  (progn (tool-bar-mode -1)	 
	 (scroll-bar-mode -1)))
(menu-bar-mode -1)

(show-paren-mode 1)

