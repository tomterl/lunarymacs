;;; -*- lexical-binding: t -*-

;;;###autoload
(defun moon/sync-peek-face ()
  (interactive)
  (set-face-attribute 'lsp-ui-peek-list nil :background (face-attribute 'hl-line :background))
  (set-face-attribute 'lsp-ui-peek-peek nil :background (face-attribute 'hl-line :background))
  (set-face-attribute 'lsp-ui-peek-selection nil :background (face-attribute 'highlight :background) :foreground (face-attribute 'default :foreground))
  (set-face-attribute 'lsp-ui-peek-filename nil :foreground (face-attribute 'font-lock-constant-face :foreground))
  (set-face-attribute 'lsp-ui-peek-highlight nil :background (face-attribute 'highlight :background) :foreground (face-attribute 'highlight :foreground) :distant-foreground (face-attribute 'highlight :foreground))
  (set-face-attribute 'lsp-ui-peek-header nil :background (face-attribute 'highlight :background) :foreground (face-attribute 'default :foreground))
)

;;;###autoload
(defun moon/smart-toggle-lsp-ui ()
  "Decide if turn on lsp-ui-doc and sideline
depend on the width of the current window.
Should be added to window adjust hook and lsp-ui-mode hook"
  (let ((onoff (>= (window-width) 120)))
    (lsp-ui-sideline-enable onoff)
    (lsp-ui-doc-enable onoff)
    ))
