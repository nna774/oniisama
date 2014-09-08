;;; oniisama.el --- summon the beauteous sister on your Emacs

;; Copyright (C) 2014 yu_i9 <allgemeiner.pc@gmail.com>

;; Modified: NoNameA 774 <nonamea774@gmail.com>
     
;; Author: yu_i9 <allgemeiner.pc@gmail.com>
;; Maintainer: yu_i9 <allgemeiner.pc@gmail.com>
;; Created: 24 Aug 2014
;; Keywords: imouto, moe

;; This file is not part of GNU Emacs.

;;; License
;; This program is published in accordance with the GNU General Public License v3.0.
;; Full text of the license : <http://www.gnu.org/licenses/gpl.html>


;;; Usage   
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
  (remove-hook 'after-save-hook 'msg-otsukare))

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
