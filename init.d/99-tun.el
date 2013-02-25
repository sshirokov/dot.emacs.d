(defun toggle-tunnel-out (&optional again)
  "Toggle the SSH tunnel on or off. If `again' is non nil, a second
call is made to `toggle-tunnel-out' without the last parameter"
  (interactive "P")
  (let* ((bname " *tun*")
         (tun (get-buffer bname)))
    (if tun
        (let ((kill-buffer-query-functions nil))
          (kill-buffer tun))
      (async-shell-command "~/bin/loop-tunnel.sh" " *tun*")))
  (when again (toggle-tunnel-out)))

;; https://gist.github.com/1116473
(if (boundp 'tunneled-out)
    (message "Already tunneled...")
  (toggle-tunnel-out)
  (setq tunneled-out t))
