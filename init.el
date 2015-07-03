;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; Load up Org Mode and (now included) Org Babel for elisp embedded in Org Mode files
(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))

;; This sets up the load path so that we can override it
(package-initialize nil)

;; Override the package with the git version of Org and other packages
(add-to-list 'load-path "~/git/org-mode/lisp")
(add-to-list 'load-path "~/git/org-mode/contrib/lisp")

;; Load the rest of the packages
(package-initialize nil)
(setq package-enable-at-startup nil)

;; load up all literate org-mode files in this directory
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))

;; store customized code other file
(setq custom-file "~/.emacs.d/.custom.el")
(load custom-file)

;;; init.el ends here
