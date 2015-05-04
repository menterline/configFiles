;; My custom keybindings
(global-set-key (kbd "C-c b") 'buffer-menu)


;Evil mode bindings
(evil-mode 1)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.25)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)

(global-evil-leader-mode 1)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "e" 'find-file
  "b" 'buffer-menu
  "w" 'save-buffer)

(provide 'my_keybindings)
