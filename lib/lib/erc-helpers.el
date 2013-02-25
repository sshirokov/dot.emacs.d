;; Hooks
(defvar erc-insert-post-hook)

(defun erc-new-buffer-hook ()
  (make-variable-buffer-local 'show-trailing-whitespace)
  (setq show-trailing-whitespace nil)
  (local-set-key (kbd "C-c SPC") 'erc-cmd-DENOTIFY)
  (erc-fill-disable))

(add-hook 'erc-insert-post-hook 'erc-truncate-buffer)
(add-hook 'erc-mode-hook 'erc-new-buffer-hook)

;; Commands
(defun erc-cmd-DENOTIFY (&rest ignore)
  "Clear the channel notifications"
  (interactive)
  (setf erc-modified-channels-alist nil)
  (erc-modified-channels-display))

(defun erc-cmd-FLUSH (&rest ignore)
  "Erase the current buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (message "Flushed contents of channel")
    t))

;; Helpers
(defun erc-all-kill (&optional prefix)
  "Kill all buffers in erc-mode. With prefix, kill-buffer-query-functions is preserved"
  (interactive "P")
  (flet ((kill-buffer-p (b) (with-current-buffer b (eq major-mode seek-mode))))
    (let* ((seek-mode 'erc-mode)
           (kill-buffer-query-functions (if prefix kill-buffer-query-functions '()))
           (killed (loop for buffer in (buffer-list)
                         when (kill-buffer-p buffer)
                         collect (buffer-name buffer)
                         and do
                         (kill-buffer buffer))))
      (message "Killed: %s buffers: %s" (length killed) killed)
      killed)))
