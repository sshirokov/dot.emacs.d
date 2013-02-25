(setenv "EDITOR" "/Applications/Emacs.app/Contents/MacOS/bin/emacsclient")
(setenv "PATH" (shell-command-to-string "source ~/.profile ; echo -n $PATH"))
(setenv "LD_LIBRARY_PATH" (shell-command-to-string "source ~/.profile ; echo -n $LD_LIBRARY_PATH"))
(setenv "EMACS" (first command-line-args))

;; Update exec-path with the contents of $PATH
(defun update-path-env ()
  "Import the contents of the `$PATH` env var into the `exec-path'"
  (loop for path in (split-string (getenv "PATH") ":") do
      (add-to-list 'exec-path path)))

;; Update every time we load this file
(update-path-env)
