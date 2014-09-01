;;; oniisama.el --- summon the beauteous sister on your Emacs

;; Copyright (C) 2014 yu_i9 <allgemeiner.pc@gmail.com>
     
;; Author: yu_i9 <allgemeiner.pc@gmail.com>
;; Maintainer: yu_i9 <allgemeiner.pc@gmail.com>
;; Created: 24 Aug 2014
;; Keywords: imouto, moe

;; This file is not part of GNU Emacs.

;;; License
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation

;;; Usage   
;; Place this file on ~/elisp/ or other valid folder
;; Write (require 'oniisama) on your .emacs.d


;;; code 

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
  (remove-hook 'after-save-hook 'msg-otsukare))

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

;;; oniisama.el ends here