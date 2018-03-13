(use-package| ob-ipython
  :defer t
  :init
  (add-hook
   'org-mode-hook
   (lambda ()
     (org-babel-do-load-languages
      'org-babel-load-languages
      '((ipython . t)))
     )))

(add-hook
 'org-mode-hook
 (lambda ()
   (org-babel-do-load-languages
    'org-babel-load-languages
    '((shell . t)))
   ))

(defvar moon-enable-org-bullets nil
  "Whether to enable org-bullet")

(use-package| org-bullets
  :defer t
  :init (add-hook
         'org-mode-hook
         (lambda ()
           (when moon-enable-org-bullets
             (org-bullets-mode 1)))))


(use-package| ox-hugo
  :after ox)
