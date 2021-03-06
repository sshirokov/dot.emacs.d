(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/tmp/.emacs.saves"))))
 '(before-save-hook (quote (delete-trailing-whitespace)))
 '(c-default-style
   (quote
	((c-mode . "cc-mode")
	 (java-mode . "java")
	 (awk-mode . "awk")
	 (other . "gnu"))))
 '(c-offsets-alist (quote ((label . 0))))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(default-frame-alist (quote ((vertical-scroll-bars) (tool-bar-lines . 0) (menu-bar-lines . 1))))
 '(delete-old-versions t)
 '(delete-selection-mode t)
 '(dired-auto-revert-buffer t)
 '(enable-recursive-minibuffers t)
 '(erc-auto-query (quote bury))
 '(erc-autojoin-mode nil)
 '(erc-beep-match-types (quote (current-nick keyword)))
 '(erc-echo-timestamps nil)
 '(erc-fill-mode nil)
 '(erc-insert-timestamp-function (quote erc-insert-timestamp-left))
 '(erc-join-buffer (quote bury))
 '(erc-kill-channel-hook (quote (erc-save-buffer-in-logs)))
 '(erc-log-insert-log-on-open nil)
 '(erc-log-mode t)
 '(erc-log-write-after-insert t)
 '(erc-log-write-after-send t)
 '(erc-match-mode t)
 '(erc-max-buffer-size 30000)
 '(erc-modules (quote (button completion irccontrols log match menu netsplit networks noncommands readonly ring scrolltobottom stamp spelling track)))
 '(erc-prompt ">>")
 '(erc-prompt-for-nickserv-password nil)
 '(erc-prompt-for-password nil)
 '(erc-query-display (quote buffer))
 '(erc-server "localhost")
 '(erc-server-auto-reconnect t)
 '(erc-server-reconnect-attempts 5)
 '(erc-server-reconnect-timeout 3)
 '(erc-services-mode t)
 '(erc-stamp-mode t)
 '(erc-timestamp-format "[%H:%M:%S] ")
 '(erc-timestamp-only-if-changed-flag nil)
 '(erc-track-exclude-types (quote ("JOIN" "KICK" "NICK" "PART" "QUIT" "MODE" "333" "353")))
 '(erc-track-showcount t)
 '(erc-truncate-buffer-on-save t)
 '(ido-auto-merge-delay-time 3)
 '(ido-default-buffer-method (quote maybe-frame))
 '(ido-default-file-method (quote selected-window))
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(ispell-program-name "aspell")
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-cleanup-whitespace t)
 '(js2-enter-indents-newline t)
 '(js2-highlight-level 3)
 '(js2-strict-missing-semi-warning nil)
 '(kept-new-versions 6)
 '(kept-old-versions 6)
 '(lazy-highlight-cleanup nil)
 '(max-lisp-eval-depth 6000)
 '(menu-bar-mode nil)
 '(ns-command-modifier (quote meta))
 '(org-hide-leading-stars t)
 '(scroll-bar-mode nil)
 '(scroll-conservatively most-positive-fixnum)
 '(server-mode t)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(ssh-directory-tracking-mode t)
 '(ssh-program "ssh")
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(version-control t)
 '(winner-mode t nil (winner)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "apple" :family "Monaco"))))
 '(erc-input-face ((t (:foreground "#c0c0c0"))))
 '(erc-my-nick-face ((t (:foreground "#26DC2EC03B54" :weight bold))))
 '(erc-timestamp-face ((t (:foreground "#27EE00D80000" :weight bold)))))
