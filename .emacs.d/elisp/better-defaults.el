(ido-mode 1)
(setq ido-decorations
      '("\n " "" "\n" "" "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))

(toggle-truncate-lines t)
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
  (setq x-select-enable-clipboard t
        x-select-enable-primary t
        save-interprogram-paste-before-kill t
        apropos-do-all t
        mouse-yank-at-point t
        require-final-newline t
        ring-bell-function 'ignore
        load-prefer-newer t
        ediff-window-setup-function 'ediff-setup-windows-plain
        backup-directory-alist `(("." . ,(concat user-emacs-directory "backups")))
        scroll-step 1
        scrollconservatively 10000)


;;Don't load new dired buffer with 'a'
(put 'dired-find-alternate-file 'disabled nil)

;; Filter out temporary buffers in ibuffer mode
(add-hook 'ibuffer-mode-hook 
 (lambda () 
  (ibuffer-switch-to-saved-filter-groups "default")
  (ibuffer-filter-by-filename "^[^*]")))


(provide 'better-defaults)
