(setq nick-face-list '())

;; Define the list of colors to use when coloring IRC nicks.                                                                     
;; (setq-default erc-colors-list '("blue" "green" "yellow"
;;                                 "white" "brown" "red"
;;                                 "purple" "pink" "cyan"))

(setq-default erc-colors-list 
              '("#eaeaea"
                "#d54e53"
                "#e78c45"
                "#e7c547"
                "#b9ca4a"
                "#70c0b1"
                "#7aa6da"
                "#c397d8"
                "blue"
                "green"
                "yellow"
                "red"
                "cyan"
                "purple"
                "pink"
))

(defun build-nick-face-list ()
  (setq i -1)
  (setq nick-face-list
        (mapcar
         (lambda (COLOR)
           (setq i (1+ i))
           (list (custom-declare-face
                  (make-symbol (format "erc-nick-face-%d" i))
                  (list (list t (list :foreground COLOR)))
                  (format "Nick face %d" i))))
         erc-colors-list)))

(defun my-insert-modify-hook ()
  (if (null nick-face-list) (build-nick-face-list))
  (save-excursion
    (goto-char (point-min))
    (if (looking-at "<\\([^>]*\\)>")
        (let ((nick (match-string 1)))
          (put-text-property (match-beginning 1) (match-end 1)
                             'face (nth
                                    (mod (string-to-number
                                          (substring (md5 nick) 0 4) 16)
                                         (length nick-face-list))
                                    nick-face-list))))))

;; This adds the ERC message insert hook.                                                                                        
(add-hook 'erc-insert-modify-hook 'my-insert-modify-hook)
(provide 'erc-nick-colors)
