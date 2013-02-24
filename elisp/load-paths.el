(require 'cl)

(defun* add-dir-and-subdirs-to-path (dir &key extra)
  (let* ((dir (expand-file-name dir))
         (dir (when (file-directory-p dir) dir)))
    (when dir
      (add-to-list 'load-path dir)
      (loop for sub in (if dir (directory-files dir) ())
            if (not (string-prefix-p "." sub))
            if (file-directory-p (expand-file-name sub dir))
            do (progn
                 (when (member sub extra)
                   (add-dir-and-subdirs-to-path (expand-file-name sub dir)))
                 (add-to-list 'load-path (expand-file-name sub dir))))))
  load-path)

(add-dir-and-subdirs-to-path "~/.emacs.d/elisp" :extra "vendor")
