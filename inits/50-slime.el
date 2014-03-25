(defun slime-setting ()
  ;;(setq inferior-lisp-program "/usr/bin/ccl64")
  ;;(setq inferior-lisp-program "/usr/bin/clisp")
  (setq inferior-lisp-program "/usr/bin/sbcl")
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
  (require 'slime)
  (slime-setup))

(slime-setting)
