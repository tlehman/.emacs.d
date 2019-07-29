					; testing.el
					; (author "github:tlehman")

(require 'subr-x) ; contains string-trim function

(defun rspec? (file)
  (string-match "_spec.rb" file))

(defun rspec-run (file)
  (let* ((root (string-trim (shell-command-to-string "git rev-parse --show-toplevel")))
	 (rails-root (concat root "/web"))
	 (testfile (car (cdr (split-string file (concat rails-root "/")))))
	 (cmd (concat "(cd " rails-root " && bundle exec rspec " testfile ")")))
    (compile cmd)))


(defun gotest? (file)
  (string-match "_test.go" file))

(defun gotest-run (file)
  (let* ((root (shell-command-to-string "git rev-parse --show-toplevel"))
	 (testfile (first (last (split-string file "/"))))
	 (cmd (concat "go test " testfile)))
    (compile cmd)))

 (defun run-tests ()
  (interactive)
  (let* ((file (buffer-file-name)))
    (cond ((rspec? file) (rspec-run file))
	  ((gotest? file) (gotest-run file)))))

(global-set-key (kbd "<f4>") 'run-tests)

(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region compilation-filter-start (point))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

