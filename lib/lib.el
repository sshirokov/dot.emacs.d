(require 'cl)

(defun load-in-order (dir)
  "Load all the files in directory `dir'
sorted in the order of `directory-files'."
  (let ((dir (expand-file-name dir)))
	(unless (file-directory-p dir)
	  (error "%s is not a directory" dir))
	(loop for file in (directory-files dir :full)
		  unless (file-directory-p file)
		  if (string-match "\\.elc?$" file)
		  do (load file))))

(defun* add-dir-and-subdirs-to-path (dir &key extra)
  "Add directory `dir' and direct subdires of `dir'
to `load-path'. Any directories named by the kwarg
`:extra' will be recursively added by `add-dir-and-subdirs-to-path'"
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
