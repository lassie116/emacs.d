(cd "~/")
(set-language-environment "Japanese")

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
 
;;; IME setting
 
;; key-map change
(defun key-map-setting ()
  (define-key global-map "\C-\\" 'undo)
	;;(define-key global-map "\C-h" 'delete-backward-char)
	(global-set-key "\C-h" 'delete-backward-char))
 
(setq default-frame-alist
      (append (list '(foreground-color . "white")
     '(background-color . "black")
     '(border-color . "black")
     '(mouse-color . "white")
     '(cursor-color . "black")
     '(width . 80)
     '(height . 70)
     )
   default-frame-alist))
 
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

(lua-setting)

(defun haskell-setting ()
  ;(load "haskell-site-file")
  (load "haskell-mode-autoloads")
  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
  (add-hook 'haskell-mode-hook 'font-lock-mode)
  ;(add-hook 'haskell-mode-hook 'turn-on-haskell-ghci))
)

(haskell-setting)

(defun slime-setting ()
  (setq inferior-lisp-program "/usr/bin/ccl64")
  ;;(setq inferior-lisp-program "/usr/bin/clisp")
  ;;(setq inferior-lisp-program "/usr/bin/sbcl")
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
  (require 'slime)
  (slime-setup))

(slime-setting)

(defun auto-complete-setting ()
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/auto-complete")
  (require 'auto-complete-config)
  (add-to-list 'ac-dictionary-directories 
	       "/usr/share/emacs/site-lisp/auto-complete/ac-dict")
  (ac-config-default))

(auto-complete-setting)

;; howm
(defun howm-setting ()
  (add-to-list 'load-path "~/lib/elisp/howm/")
  (require 'howm)
  (setq howm-menu-lang 'ja)
  ;; タイトル色
  (set-face-foreground 'howm-mode-title-face "turquoise"))
(howm-setting)

;; my setting
(line-number-mode 1)
(column-number-mode 1)
(iswitchb-mode 1)

;; coding-setting
(prefer-coding-system 'utf-8)
 
(setq visible-bell t)
(global-font-lock-mode t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 ;'(inferior-lisp-program "java -cp /opt/local/share/java/clojure/lib/clojure.jar clojure.main")
 ;'(inferior-lisp-program "clj -r")
 '(tool-bar-mode nil))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(put 'downcase-region 'disabled nil)

(key-map-setting)
(setq indent-tabs-mode nil)

;; flymake-ruby
