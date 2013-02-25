(let ((this-dir (or (file-name-directory load-file-name)
					"~/.emacs.d/lib/")))
  ;; Load our lib
  (load (format "%s%s" this-dir "lib"))

  ;; Bootsrap!
  (load-in-order "~/.emacs.d/init.d")

  ;; Load the non-botstrap libs
  (load-in-order (format "%s%s" this-dir "lib")))
