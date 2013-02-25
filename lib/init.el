;; Load our lib
(load (format "%s%s" (file-name-directory load-file-name) "lib"))

;; Bootsrap!
(load-in-order "~/.emacs.d/init.d")
