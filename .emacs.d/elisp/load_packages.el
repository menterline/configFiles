; list the packages you want
(when (<= emacs-major-version 23)

 ; (package-initialize)
  (add-to-list 'load-path (concat user-emacs-directory "elisp/packages") )	
  (require 'evil)
  (require 'key-chord)
  )


(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-list '(
                       2048-game
                       evil
                       evil-leader
                       ace-window
                       chess
                       org
                       smex
                       tabbar
                       undo-tree
                       key-chord
                       ))
  
 ; list the repositories containing them
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			   ("marmalade" . "https://marmalade-repo.org/packages/")
			   ("melpa" . "http://melpa.org/packages/")))
  
; activate all the packages (in particular autoloads)
  (package-initialize)
  
; fetch the list of packages available 
  (unless package-archive-contents
    (package-refresh-contents))
  
; install the missing packages
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package)))

  )
(provide 'load_packages)
