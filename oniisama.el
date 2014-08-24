
;; Place this file on ~/elisp/ or other valid folder
;; Write (require 'oniisama) on your .emacs.d

(defun msg-sasuga () (message "すごいじゃない！ しれーかん！"))
(defun msg-otsukare () (message "しれーかん！ お疲れさま！"))

(defadvice newline (after after-msg disable)
  (msg-sasuga))

(defun imouto ()
  (interactive)
  (message "しれーかん！ 呼んだ？")
  (add-hook 'after-save-hook 'msg-otsukare)
  (ad-enable-regexp "after-msg")
  (ad-activate-regexp "after-msg")
  (ad-activate 'newline))

(defun urusaizo ()
  (interactive)
  (message "ごめんね。しれーかん……")
  (ad-disable-regexp "after-msg")
  (ad-activate-regexp "after-msg")
  (remove-hook 'after-save-hook 'msg-otsukare)
  (remove-hook 'compilation-mode-hook 'msg-tensai))

(defun aishiteiruyo ()
  (interactive)
  (message "私も大好きよ、しれーかん！"))

(defun kireidayo ()
  (interactive)
  (message "褒めてもなにもでないわよー しれーかん"))

(defun tsukareta ()
  (interactive)
  (message "今日はもう休んで、明日がんばりましょ？"))

(defun tsurai ()
  (interactive)
  (message "大丈夫よ。私がいるじゃない！"))

(provide 'oniisama)
