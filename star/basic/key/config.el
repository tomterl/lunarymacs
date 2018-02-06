;;
;; Package
;;

(use-package general
              :after which-key
              :init
              (defvar moon-leader "SPC")
              (defvar moon-non-normal-leader "M-SPC")
              :config
	            (general-create-definer default-leader
		                                  :states '(normal visual insert emacs)
		                                  :prefix moon-leader
		                                  :non-normal-prefix moon-non-normal-leader)

	            (global-set-key (kbd "<escape>") #'keyboard-escape-quit)

              (default-leader "f" '(:ignore t :which-key "file")
                "i" '(:ignore t :which-key "insert")
                "h" '(:ignore t :which-key "help")
                "j" '(:ignore t :which-key "jump")
                "r" '(:ignore t :which-key "register")
                "s" '(:ignore t :which-key "search")
                "T" '(:ignore t :which-key "Theme")
                "p" '(:ignore t :which-key "project")
                "w" '(:ignore t :which-key "window")
                "b" '(:ignore t :which-key "buffer")
                "w" '(:ignore t :which-key "window")
                "q" '(:ignore t :which-key "quit")
                ;; file
                "fs" #'save-buffer
		            ;; quit
		            "qq" #'save-buffers-kill-emacs
                ;; other
                "TAB" #'switch-to-prev-buffer
                )

	            (general-define-key :states '(normal insert emacs)
				                          "TAB" #'indent-for-tab-command)
	            (general-define-key :states 'visual
				                          "TAB" #'indent-region)
              )

(use-package which-key
              :config (which-key-mode 1))

