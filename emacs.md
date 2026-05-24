# emacsについてメモ

Linuxでemacsを使っている場合、`${HOME}/.emacs.el`を編集することで設定できる。

設定例

```sh
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq indent-tabs-mode nil)
(setq tab-width 4)

(setq scroll-conservatively 1)

(global-set-key (kbd "C-r") 'replace-regexp)
(global-set-key (kbd "C-f") 'query-replace)
(global-set-key (kbd "C-w") 'query-replace-regexp)
(global-set-key (kbd "C-p") 'indent-region)
(global-set-key (kbd "C-b") 'goto-line)
(global-set-key (kbd "C-u") 'upcase-region)
(global-set-key (kbd "C-j") 'downcase-region)
(global-set-key (kbd "C-n") 'align-regexp)

(custom-set-faces
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "color-69"))))
 '(font-lock-comment-face ((t (:foreground "color69"))))
 '(font-lock-doc-face((t (:inherit font-lock-string-face :foreground "color-40"))))
 '(font-lock-function-name-face ((t (:foreground "color-33"))))
 '(font-lock-string-face ((t (:foreground "color-40"))))
 '(minbuffer-prompt ((t (:foreground "color-51")))))
 

(defun swap-window-positions ()         ; Stephen Gildea
   "*Swap the positions of this window and the next one."
   (interactive)
   (let ((other-window (next-window (selected-window) 'no-minibuf)))
     (let ((other-window-buffer (window-buffer other-window))
           (other-window-hscroll (window-hscroll other-window))
           (other-window-point (window-point other-window))
           (other-window-start (window-start other-window)))
       (set-window-buffer other-window (current-buffer))
       (set-window-hscroll other-window (window-hscroll (selected-window)))
       (set-window-point other-window (point))
       (set-window-start other-window (window-start (selected-window)))
       (set-window-buffer (selected-window) other-window-buffer)
       (set-window-hscroll (selected-window) other-window-hscroll)
       (set-window-point (selected-window) other-window-point)
       (set-window-start (selected-window) other-window-start))
     (select-window other-window)))
```