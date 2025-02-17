;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; require
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(require 'image-dired)
;;(require 'simple-journal)
;;(require 'pager)
;;(require 'weblogger)
;;(require 'deft)
(require 'org-install)
(require 'pandoc-mode)
(load-library "zeitgeist.el")
(add-hook 'write-file-hooks 'time-stamp)
(load-file "~/Dropbox/perso/scripts/emacs/emacs.d/weblogger.el")
(global-set-key "\C-cbs" 'weblogger-start-entry)


(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;;(setq org-default-notes-file (concat org-directory "/home/david/Dropbox/perso/notes.org"))
;; (define-key global-map "\C-cc" 'org-capture)
;;(global-set-key (kbd "<f8>") 'org-capture)

'(org-capture-templates 
(quote (
("a" "Appointment" entry (file+headline 
"~/taskdiary.org" "Calendar") 
"* APPT %^{Description} %^g
%?
Added: %U") 
)))


(defun 2new-lines ()
  (interactive)
  (newline-and-indent)
  (newline-and-indent))
  (global-set-key  (kbd "C-<return>") '2new-lines)
;;(setq-default indent-tabs-mode nil)
;;(setq-default tab-width 4) 

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Markdown
;;
;;;;;;;;;;;;;;;;;;;;;;;;;

;; Markdown mode
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
   
(setq auto-mode-alist
      (append '(
                ("\\.blog$" . markdown-mode)
                ("\\.markdown$" . markdown-mode)
                ("\\.md$" . markdown-mode)
                ("\\.gclient$" . python-mode)
                ) auto-mode-alist))


(setq deft-extension "markdown")
(setq deft-directory "~/Dropbox/perso/archives")
(setq deft-text-mode 'markdown-mode)
;;(global-set-key [f8] 'deft)
(add-hook 'markdown-mode-hook 'turn-on-pandoc)

;;;;;;;;;;;;;;;;;;;
;; 
;; settings
;;
;;;;;;;;;;;;;;;;;;;

;; ============== default font ==============

(set-frame-font "Courier 10 Pitch-14")
(set-frame-font "Ubuntu-14")
;;(set-face-attribute 'default nil :height 180)
;;(set-face-attribute 'default nil :font "Ubuntu-14") 

;; ============== if tty ===================
;; Terminal type TTY 
;; (if (and (not window-system)
;;           (not (equal system-type 'ms-dos)))
;;      ((set-frame-font "TerminusBoldVGA-12")
;;          (set-face-attribute 'default nil :height 200)))


(setq left-margin-width 20)
;; (setq left-margin 20)
;;(set-window-margins nil 10 0)
;; 


(defun etk-insert-date ()
	(interactive)
	(save-excursion
	(end-of-buffer)
	(insert (format-time-string "\n### %a %e %b %Y, %k:%M\n"))))


(global-set-key (kbd "C-< C-d") 'etk-insert-date)


(global-set-key (kbd "C-z") 'undo) ; Ctrl+z
(global-set-key (kbd "C-S-z") 'redo) ;  Ctrl+Shift+z

(show-paren-mode 1)

;;(setq-default left-fringe-width 150)

;; ============== Markdown ==============

;;define Markdown as default mode for unknown files
(setq default-major-mode 'markdown-mode)
(set-window-margins nil 10 0)
(setq left-margin-width 20)
;; ============== Mouse ==================
;; Prise en charge de la molette de la souris.
;; Utilisée seule, la rotation de la molette provoque un défilement de
;; 5 lignes par cran. Combinée à la touche Shift, le défilement est
;; réduit à une ligne. Combinée à la touche Control, le défilement
;; s'effectue page (1 hauteur de fenêtre) par page.
(require 'mwheel)
(mouse-wheel-mode 1)

;; ============= TRASH ==========
; deleting files goes to OS's trash folder
(setq delete-by-moving-to-trash t) ; “t” for true, “nil” for false

;; ============ WORD COUNT ===========

(setq load-path (cons (expand-file-name "~/elisp") load-path))
 (autoload 'word-count-mode "word-count"
          "Minor mode to count words." t nil)
 (global-set-key (quote [f6]) 'word-count-mode)


;; ============= Windows ==============

;; Activate soft line wrap (see longlines) whe in Markdown   
(add-hook 'markdown-mode-common-hook 'longlines-minor-mode t)   

;; Windows background
;; (set-background-color "SlateGrey")
;; (set-background-color "Black")
;; (set-foreground-color "SlateGrey")
;; (set-foreground-color "DarkGrey")


;; Make all "yes or no" prompts show "y or n" instead
;;
(fset 'yes-or-no-p 'y-or-n-p)

;; Selon les règles typographiques françaises, le point final d'une
;; phrase n'est suivi que d'un seul espace (contre deux dans la
;; tradition anglo-saxonne). Il est utile qu'Emacs le sache pour
;; formater correctement les textes.
(setq sentence-end-double-space nil)

;; no splash screen
(setq inhibit-startup-message t)

;; no message in scratch buffer
(setq initial-scratch-message nil)
(setq auto-revert-mode t)
(setq ring-bell-function 'ignore)

;; no blinking
(blink-cursor-mode (- (*) (*) (*)))

;;Show/hide menu and menu  bar:
(tool-bar-mode 0)
(menu-bar-mode 0)

;;Show/hide scroll bar:
;;(toggle-scroll-bar -1) 
(setq scroll-bar-mode-explicit t)
;;(set-scroll-bar-mode `right) 

;; Simple titlebar with only the filename 
;;
(setq frame-title-format '("" "%b"))

;; Afficher l'heure dans la barre d'état (format 24 heures)
(display-time)
(setq display-time-24hr-format 1)

;; If not on AC power line, then display battery status on the mode line
(and (require 'battery nil t)
     (functionp battery-status-function)
     (or (equal (cdr (assoc ?L (funcall battery-status-function))) "on-line")
         (display-battery-mode)))

;;mouse go away:
(mouse-avoidance-mode 'animate)

;; Lorsqu'il reformate un paragraphe, Emacs doit respecter les règles de
;; typographie française et ne pas sauter à la ligne avant un signe de
;; ponctuation double ou des guillemets ouvrants.
(setq fill-nobreak-predicate '(fill-french-nobreak-p))

;; Selon les règles typographiques françaises, le point final d'une phrase
;; n'est suivi que d'un seul espace (contre deux dans la tradition
;; anglo-saxonne). Il est utile qu'Emacs le sache pour formater correctement
;; les textes.
(setq sentence-end-double-space nil)

;; L'outil de correction orthographique « ispell » doit utiliser le
;; thésaurus français.
(require 'ispell)
(setq ispell-dictionary "francais")



(setq x-select-enable-clipboard t)

;; Remember position in files between sessions 
;;
(require 'saveplace)
(setq-default save-place t)

;; highlight the current line:
;;
(global-hl-line-mode 1)
;; Customize HL background color: 
;; background same as page + text in lighter grey
;;(set-face-foreground 'hl-line "snow3")
;;(set-face-foreground 'hl-line "Green")
;;(set-face-background 'hl-line "SlateGrey")
;(set-face-background 'hl-line "Black")

;; when you mark a region, you can delete it or replace it as in other Windows programs: 
;; simply hit delete or type whatever you want or yank
(delete-selection-mode 1)


;; Change cursor color according to mode; inspired by
;; http://www.emacswiki.org/emacs/ChangingCursorDynamically
(setq djcb-read-only-color       "gray")
;; valid values are t, nil, box, hollow, bar, (bar . WIDTH), hbar,
;; (hbar. HEIGHT); see the docs for set-cursor-type

(setq djcb-read-only-cursor-type 'hbar)
(setq djcb-overwrite-color       "red")
(setq djcb-overwrite-cursor-type 'box)
(setq djcb-normal-color          "yellow")
(setq djcb-normal-cursor-type    'hbar)

(defun djcb-set-cursor-according-to-mode ()
  "change cursor color and type according to some minor modes."

  (cond
    (buffer-read-only
      (set-cursor-color djcb-read-only-color)
      (setq cursor-type djcb-read-only-cursor-type))
    (overwrite-mode
      (set-cursor-color djcb-overwrite-color)
      (setq cursor-type djcb-overwrite-cursor-type))
    (t 
      (set-cursor-color djcb-normal-color)
      (setq cursor-type djcb-normal-cursor-type))))

(add-hook 'post-command-hook 'djcb-set-cursor-according-to-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; FILES & FOLDERS 
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; default folder is 
(setq default-directory "/home/david/Documents" )
;; templates home
(setq template-home-directory "~/Dropbox/perso/scripts/emacs/templates")

;; ========== Backup Directory ==========

;; Enable backup files.
(setq make-backup-files t)
;; disable annoying backups and autosaves
(setq backup-inhibited t)
(setq auto-save-default nil)


;; Enable versioning with default values (keep five last versions, I think!)
(setq version-control t)
;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.autosaves/"))))

;; do not change original file creation date:
(setq backup-by-copying t)

;; ============== shortcut for a bunch of files ==============

(defun goinit () 
  (interactive) 
  (find-file "~/Dropbox/perso/scripts/emacs/init.el"))
(defun goj () 
  (interactive) 
  (find-file "~/Documents/perso/Archives/2011-journal.markdown"))

;; Informations qui peuvent être utiles à Emacs pour remplir certains champs
;; et configurer correctement certains modes.
(setq user-full-name "David Bosman")
(setq user-mail-address "david@davidbosman.fr")

;; ============== Sauvegarde d'une session à l'autre 
;; de l'historique des commandes et des fichiers ouverts ==============

;;(savehist-mode 1)


;; ============== remember  files ==============

;; Get list with C-x C-row
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 30)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)



;; ============ Soft line break LOVE ============ 
;; ============ MINIMAL MODE ============ 

;; source: http://penguinpetes.com/b2evo/index.php?title=howto_make_emacs_use_soft_word_wrap_like&more=1&c=1&tb=1&pb=1.
;;

(autoload 'longlines-mode "longlines.el" "Minor mode for editing long lines." t)
(add-hook 'text-mode-hook 'longlines-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 70)
;;(setq-window-margins nil 50 30)
(set-fringe-style 0)
(defun toggle-minimal-mode (fs)
  (interactive "P")
  (defun fullscreen-margins nil
    (if (and (window-full-width-p) (not (minibufferp)))
	(set-window-margins nil (/ (- (frame-width) 120) 2) (/ (- (frame-width) 120) 2))
      (mapcar (lambda (window) (set-window-margins window nil nil)) (window-list))))

  (cond (menu-bar-mode
	 (menu-bar-mode -1) (tool-bar-mode -1) (scroll-bar-mode -1)
	 (set-frame-height nil (+ (frame-height) 4))
	 (if fs (progn (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
					      '(1 "_NET_WM_STATE_FULLSCREEN" 0))
		       (add-hook 'window-configuration-change-hook 'fullscreen-margins))))
	(t (menu-bar-mode 1) (tool-bar-mode 1) (scroll-bar-mode 1)
	   (when (frame-parameter nil 'fullscreen)
	     (remove-hook 'window-configuration-change-hook 'fullscreen-margins)
	     (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
				    '(0 "_NET_WM_STATE_FULLSCREEN" 0))
	     (set-window-buffer (selected-window) (current-buffer)))
	   (set-frame-width nil (assoc-default 'width default-frame-alist)))))

(global-set-key [f12] 'toggle-minimal-mode)

;; ============ Make Emacs human friendly ===========

;;(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "fr") ; FR
;;(load "/home/david/Dropbox/perso/scripts/emacs/emacs.d/ergoemacs-keybindings-5.3.9/ergoemacs-mode")
;;(ergoemacs-mode 1)

;; ========== Shortcuts ===========

;; change complete-tag to this since M-TAB bound to Mac Change
;; Application
;;
(global-set-key (kbd "M-<return>") 'complete-tag)

;; some standard keyboard shortcuts 
;; and less standards one:
;;
(global-set-key (kbd "M-j") 'previous-buffer)
(global-set-key (kbd "M-k") 'next-buffer)
(global-set-key (kbd "M-n") "~")
(global-set-key [f2] 'split-window-horizontally) 
;;(global-set-key [f1] 'delete-other-windows) 
(global-set-key [(control z)] `undo)
(global-set-key [(meta v)] `yank)
(global-set-key [(meta c)] `kill)
(global-set-key [(control o)] 'find-file)
;;(global-set-key [(control n)] 'find-file-other-frame)
(global-set-key [(control s)] 'save-buffer)
(global-set-key [(meta s)] 'write-file)
;;(global-set-key [(kbd "C-c c")] `yank)
;;(global-set-key (kbd "C-z") 'undo)
;;(global-set-key (kbd "M-i") 'previous-line) ; was tab-to-tab-stop
;;(global-set-key (kbd "M-j") 'backward-char) ; was indent-new-comment-line
;;(global-set-key (kbd "M-k") 'next-line) ; was kill-sentence
;;(global-set-key (kbd "M-l") 'forward-char)  ; was downcase-word
;;(global-set-key (kbd "C-c v") 'yank) ; paste.
;;(global-set-key (kbd "M-SPC") 'set-mark-command) ; was just-one-space
;;(global-set-key (kbd "C-c w") 'text-mode); soft line wrap as an editor see bottom
(global-set-key [f1] 'text-mode); soft line wrap as an editor see bottom





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; functions
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;


;;
;; Zoom text as in a browser
;; source: http://emacs-fu.blogspot.com/2008/12/zooming-inout.html
;;
(defun djcb-zoom (n)
  "with positive N, increase the font size, otherwise decrease it"
  (set-face-attribute 'default (selected-frame) :height 
    (+ (face-attribute 'default :height) (* (if (> n 0) 1 -1) 10)))) 
(global-set-key (kbd "C-+")      '(lambda nil (interactive) (djcb-zoom 1)))
(global-set-key [C-kp-add]       '(lambda nil (interactive) (djcb-zoom 1)))
(global-set-key (kbd "C--")      '(lambda nil (interactive) (djcb-zoom -1)))
(global-set-key [C-kp-subtract]  '(lambda nil (interactive) (djcb-zoom -1)))    


(show-paren-mode 1) ; turn on paren match highlighting


;; insert date
;;
(defun insert-date (prefix)
  "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
  (interactive "P")
  (let ((format (cond
                 ((not prefix) "%A, %B %d, %Y")
                 ((equal prefix '(4)) "%m-%d-%Y")
                 ((equal prefix '(16)) "%m.%d.%Y"))))
    (insert (format-time-string format))))

;; Insertion de date au format AAAA-MM-JJ
(defun insert-iso-date-string ()
  "Insert a nicely formated date string."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))
;; La séquence « C-c d » insère la date
(global-set-key [(control c) (d)] 'insert-iso-date-string)


;; Insertion de date en clair JJ Mois AAAA
(defun insert-text-date-string ()
  "Insert a nicely formated date string."
  (interactive)
  (insert (format-time-string "%d %B %Y")))
;; La séquence « C-c S-d » insère la date
(global-set-key [(control c) (shift d)] 'insert-text-date-string)


;; Insertion d'horodate au format AAAA-MM-JJ HH:NN:SS
(defun insert-iso-time-string ()
  "Insert a nicely formated timestamp string."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S")))
;; La séquence « C-c t » insère l'horodate
(global-set-key [(control c) (t)] 'insert-iso-time-string)


;; Insertion d'horodate au format AAAA-MM-JJ HH:NN:SS
(defun insert-text-time-string ()
  "Insert a nicely formated timestamp string."
  (interactive)
  (insert (format-time-string "%d %B %Y à %H:%M:%S")))
;; La séquence « C-c S-t » insère l'horodate
(global-set-key [(control c) (shift t)] 'insert-text-time-string)

;;;;;;;;;;;;;;;;;;;;;;;
;;
;; templates
;;
;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;;
;; simple journal
;;
;;;;;;;;;;;;;;;;;;;;;;;

(defun insert-day ()
  (interactive)
  (insert (format-time-string "%Y-%m%d @ ")))
(defun insert-time ()
  (interactive)
  (insert (format-time-string "%H:%M")))
(defun journal () 
  (interactive) 
  (find-file "~/Dropbox/perso/Archives/2011-journal.markdown")
  (end-of-buffer)
  (insert "\n")
  (insert "### ")
  (insert-day)
;;  (insert "\n\n")
;;  (insert "#### ")
  (insert-time) 
  (insert "  \n") 
)


(defun markdown-insert-time ()
  (interactive)
  (insert (format-time-string "### %H:%M\n")))

;;(global-set-key '[M-it]    'insert-time)
;;(define-key global-map '[M-x mit] 'markdown-insert-time)
(global-set-key (kbd "C-S-t") 'markdown-insert-time) 


;; convert multilines § in a single line
;; http://people.gnome.org/~federico/news-2011-05.html#11
(defun unfill-paragraph ()
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))

(defun unfill-region ()
  (interactive)
  (let ((fill-column (point-max)))
    (fill-region (region-beginning) (region-end) nil)))

(define-key global-map "\M-Q" 'unfill-paragraph)
(define-key global-map "\C-\M-q" 'unfill-region)




;;(set-global-window-margins nil 20 100) 



