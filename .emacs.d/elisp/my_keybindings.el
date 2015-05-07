;; My custom keybindings

(global-set-key (kbd "C-c C-l") 'goto-line)

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-z") 'zap-up-to-char)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(global-set-key (kbd "C-c c") 'compile)

;; If version >= 24, more packages available
(when (>= emacs-major-version 24) 
  (global-set-key (kbd "M-x") 'smex)

; Evil mode bindings
  (evil-mode 1)
  (key-chord-mode 1)
  (setq key-chord-two-keys-delay 0.25)
  (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  (key-chord-define evil-insert-state-map "kj" 'evil-normal-state)
  
  (global-evil-leader-mode 1)
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
   "l" 'goto-line
   "a" 'ace-window
   "e" 'find-file
   "b" 'ibuffer
   "w" 'save-buffer)
  )
(provide 'my_keybindings)
