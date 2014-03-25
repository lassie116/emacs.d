;;; IME setting

'( 
(setq default-frame-alist
      (append (list '(foreground-color . "white")
     '(background-color . "black")
     '(border-color . "black")
     '(mouse-color . "white")
     '(cursor-color . "black")
     '(width . 80)
     '(height . 70)
     )
   default-frame-alist)))
 
(defun yasnippet-setting()
  ;; yasnippet
  (add-to-list 'load-path "~/Library/elisp/yasnippet")
  (require 'yasnippet)
  (setq yas/snippet-dirs "~/Library/elisp/yasnippet/snippets")
  (yas/initialize))

;(yasnippet-setting)

(defun lua-setting()
    (setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
    (autoload 'lua-mode "lua-mode" "Lua editing mode." t))

;(lua-setting)

(defun haskell-setting ()
  ;(load "haskell-site-file")
  (load "haskell-mode-autoloads")
  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
  (add-hook 'haskell-mode-hook 'font-lock-mode)
  ;(add-hook 'haskell-mode-hook 'turn-on-haskell-ghci))
)

;(haskell-setting)


(defun auto-complete-setting ()
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/auto-complete")
  (require 'auto-complete-config)
  (add-to-list 'ac-dictionary-directories 
	       "/usr/share/emacs/site-lisp/auto-complete/ac-dict")
  (ac-config-default))

;(auto-complete-setting)

;; howm
(defun howm-setting ()
  (add-to-list 'load-path "~/lib/elisp/howm/")
  (require 'howm)
  (setq howm-menu-lang 'ja)
  ;; タイトル色
  (set-face-foreground 'howm-mode-title-face "turquoise"))
;(howm-setting)
