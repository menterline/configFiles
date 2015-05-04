;;Load my packages
(add-to-list `load-path (concat user-emacs-directory "elisp/" ) )
(require 'load_packages)


(require 'better-defaults)
(require 'my_keybindings)


(ido-vertical-mode 1)
