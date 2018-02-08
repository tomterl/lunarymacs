;;(package-initialize t)

;;
;; hacks
;;

;; I have these in basic-ui star,
;; but copy them here makes startup looks a bit nicer
(menu-bar-mode -1)
(tooltip-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(toggle-frame-maximized)


;;
;; Not hacks
;;

(load (concat (expand-file-name user-emacs-directory) "core/core"))

(moon| :basic
       basic-ui
       key
       evil
       ui
       other
       edit
       :autocomplete
       ivy
       company
       :casouri
       casouri
       :os
       mac
       :utility
       dir
       :checker
       syntax
       spell
       :lang
       lsp
       python
       )

(customize| 
 (setq moon-maximize-on-startup t)
 (setq moon-normal-state-cursor-color doom-blue)
 (setq moon-insert-state-cursor-color spacemacs-yellow)
)