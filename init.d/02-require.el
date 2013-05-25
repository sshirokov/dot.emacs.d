;; Features
(require 'smex)
(require 'dedicated)
(require 'ssh)


;; IRC and IRC Accessories
(require 'erc-nick-colors)
(require 'znc)
(require 'tls)

;; Edit modes
(require 'coffee-mode)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Fucking magit
(require 'magit)
