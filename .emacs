;;------------SCHEME-----------------;;
; Always do syntax highlighting
(global-font-lock-mode 1)

;;; Also highlight parens
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;;; This is the binary name of my scheme implementation
(setq scheme-program-name "scm")
;(set-variable (quote scheme-program-name) "stk")

(add-to-list 'load-path "~/.emacs.d/")
(load "~/temp/lisp_study/test.el")

(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
         (let* ((my-lisp-dir "~/elisp/")
		              (default-directory my-lisp-dir))
	             (setq load-path (cons my-lisp-dir load-path))
		                (normal-top-level-add-subdirs-to-load-path)))

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))