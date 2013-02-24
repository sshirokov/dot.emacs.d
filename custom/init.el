;; Set new custom path, and load the
;; customizations
(let ((base-custom "~/.emacs.d/custom/base.el")
      (custom       "~/.emacs.d/custom/custom.el"))
  (load base-custom)
  (when (file-exists-p custom)
    (load custom))
  (setf custom-file custom))
