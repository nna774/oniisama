
;; Place this file on ~/elisp/ or other valid folder
;; Write (require 'oniisama) on your .emacs.d

(defun msg-sasuga () (message "流石です、お兄様！"))
(defun msg-otsukare () (message "お疲れ様でした、お兄様！"))

(defadvice newline (after after-msg disable)
  (msg-sasuga))

(defun imouto ()
  (interactive)
  (message "お呼びですか、お兄様？")
  (add-hook 'after-save-hook 'msg-otsukare)
  (ad-enable-regexp "after-msg")
  (ad-activate-regexp "after-msg")
  (ad-activate 'newline))

(defun urusaizo ()
  (interactive)
  (message "申し訳ありませんでした、お兄様。")
  (ad-disable-regexp "after-msg")
  (ad-activate-regexp "after-msg")
  (remove-hook 'after-save-hook 'msg-otsukare)
  (remove-hook 'compilation-mode-hook 'msg-tensai))

(defun aishiteiruyo ()
  (interactive)
  (message "私も愛しております、お兄様。"))

(defun kireidayo ()
  (interactive)
  (message "そんな……お兄様……///"))

(defun tsukareta ()
  (interactive)
  (message "お兄様なら、きっとまだ頑張れます！私は信じています。"))

(defun tsurai ()
  (interactive)
  (message "お兄様がいつも頑張っているのは知っています。今日くらいは休みましょう？"))

(provide 'oniisama)