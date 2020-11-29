; $DOOMDIR/config.el -*- lexical-binding: t; -*-

; --- User Settings ------------------------------------------------------------

(setq user-full-name "William Vincent"
      user-mail-address "compelledtograce@gmail.com")

; --- Tabs Settings ------------------------------------------------------------

(setq centaur-tabs-set-bar 'over
      centaur-tabs-set-icons t
      centaur-tabs-gray-out-icons 'buffer
      centaur-tabs-height 24
      centaur-tabs-set-modified-marker t
      centaur-tabs-style "bar"
      centaur-tabs-modified-marker "•")
(map! :leader
      :desc "Toggle tabs on/off"
      "t c" #'centaur-tabs-local-mode)
(evil-define-key
        'normal centaur-tabs-mode-map
                (kbd "g <right>") 'centaur-tabs-forward
                (kbd "g <left>")  'centaur-tabs-backward
                (kbd "g <down>")  'centaur-tabs-forward-group
                (kbd "g <up>")    'centaur-tabs-backward-group)

; --- Theme Settings -----------------------------------------------------------

(setq doom-theme 'doom-dracula)

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
)

(setq display-line-numbers-type 'relative)


; --- Font Settings ------------------------------------------------------------

(setq doom-font
      (font-spec :family "JetBrainsMono Nerd Font" :size 16)
)

(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic)
)


; --- Transparency -------------------------------------------------------------

(set-frame-parameter (selected-frame) 'alpha '(95 . 85))
(add-to-list 'default-frame-alist '(alpha . (95 . 85)))


; --- Org Mode Settings --------------------------------------------------------

(setq org-directory "~/org/")
(after! org
  (require 'org-bullets)
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  (setq org-directory "~/org/"
        org-agenda-files '("~/org/agenda.org")
        org-default-notes-file (expand-file-name "notes.org" org-directory)
        org-ellipsis " ▼ "
        org-log-done 'time
        org-journal-dir "~/org/journal/"
        org-journal-date-format "%B %d, %Y (%A)"
        org-journal-file-format "%Y-%m-%d.org"
        org-hide-emphasis-markers t
        org-link-abbrev-alist
          '(("google" . "http://www.google.com/search?q=")
            ("arch-wiki" . "https://wiki.archlinux.org/index.php/")
            ("ddg" . "https://duckduckgo.com/?q=")
            ("wiki" . "https://en.wikipedia.org/wiki/"))
        org-todo-keywords
          '((sequence
             "TODO(t)"
             "PROJ(p)"
             "WAIT(w)"
             "|"
             "DONE(d)"
             "CANCELLED(c)" ))))
