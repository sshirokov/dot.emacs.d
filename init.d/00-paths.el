;; Set our standard load paths
(add-dir-and-subdirs-to-path "~/.emacs.d/elisp")
(add-dir-and-subdirs-to-path "~/.emacs.d/vendor")

;; Change the location of the customization info
;; And load our defaults
(let ((base-custom "~/.emacs.d/custom/base.el")
      (custom      "~/.emacs.d/custom/custom.el"))
  (load base-custom)
  (setf custom-file custom)
  (when (file-exists-p custom-file)
    (load custom-file)))
