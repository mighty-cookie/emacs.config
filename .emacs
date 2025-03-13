;; Garbage collector; necessary for lsp too
(setq gc-cons-threshold 100000000)
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style
   '((c-mode . "bsd")
     (c++-mode . "bsd")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu")))
 '(calendar-christian-all-holidays-flag t)
 '(column-number-mode t)
 '(custom-enabled-themes '(modus-vivendi))
 '(custom-safe-themes
   '("712dda0818312c175a60d94ba676b404fc815f8c7e6c080c9b4061596c60a1db" "faf642d1511fb0cb9b8634b2070a097656bdb5d88522657370eeeb11baea4a1c" "fbf73690320aa26f8daffdd1210ef234ed1b0c59f3d001f342b9c0bbf49f531c" "d41229b2ff1e9929d0ea3b4fde9ed4c1e0775993df9d998a3cdf37f2358d386b" "7b602fe4a324dc18877dde647eb6f2ff9352566ce16d0b888bfcb870d0abfd70" "2e7dc2838b7941ab9cabaa3b6793286e5134f583c04bde2fba2f4e20f2617cf7" "937401a2e532f2c8c881b6b3f20d9d4b6b9405bccf72ea6289c9d3f4507eb1ab" "a75aff58f0d5bbf230e5d1a02169ac2fbf45c930f816f3a21563304d5140d245" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "efcecf09905ff85a7c80025551c657299a4d18c5fcfedd3b2f2b6287e4edd659" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "524fa911b70d6b94d71585c9f0c5966fe85fb3a9ddd635362bfabd1a7981a307" default))
 '(dired-kill-when-opening-new-dired-buffer t)
 '(global-display-line-numbers-mode t)
 '(highlight-indentation-overlay-string "|")
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice nil)
 '(lsp-keymap-prefix "C-c l")
 '(menu-bar-mode nil)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount
   '(3
     ((shift)
      . hscroll)
     ((meta))
     ((control meta)
      . global-text-scale)
     ((control)
      . text-scale)))
 '(org-agenda-files
   '("c:/Users/jure.pelhan/Desktop/TODO.org" "c:/source/lfs-diff-viewer/TODO.org"))
 '(org-confirm-babel-evaluate nil)
 '(package-selected-packages
   '(modus-themes elpy goto-chg solarized-theme rainbow-delimiters magit eglot lsp-pyright pyvenv ivy-hydra marginalia highlight-indentation projectile expand-region lsp-treemacs flycheck lsp-ivy lsp-ui multiple-cursors move-text))
 '(python-shell-interpreter "C:\\ProgramData\\anaconda3\\Scripts\\ipython")
 '(python-shell-interpreter-args "-i --simple-prompt --InteractiveShell.display_page=True")
 '(temporary-file-directory "c:/Users/jure.pelhan/AppData/Local/Temp/")
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cascadia Code" :foundry "outline" :slant normal :weight regular :height 90 :width normal))))
 '(highlight ((t (:background "dark cyan" :foreground "#ffe4e1")))))
;;
(column-number-mode 1)
(setq-default mode-line-format '("%e" mode-line-front-space
				 (:propertize ("" mode-line-mule-info mode-line-client
					       mode-line-modified mode-line-remote)
					      display (min-width (5.0)))
				 mode-line-frame-identification mode-line-buffer-identification
				 "   " mode-line-position (vc-mode vc-mode) "  "
				 (:eval (if cua-mode "C" "Є")) "  " mode-line-misc-info "  " mode-line-modes
				 mode-line-end-spaces))
;;
(global-auto-revert-mode t)
(setq ring-bell-function 'ignore)
(pixel-scroll-precision-mode 1)
(global-display-line-numbers-mode)
(delete-selection-mode 1)
(setq scroll-conservatively 101)
(setq-default indent-tabs-mode nil)
(menu-bar-mode -1)
(tool-bar-mode -1)
(desktop-save-mode 1)
(setq initial-scratch-message ";; HIYA!\n\n")
;;
;; Color theme
(setq modus-vivendi-palette-overrides
      '((bg-main "#262626")
        (fg-main "#ffe4e1")))
(load-theme 'modus-vivendi)
;;
;; Grep utilities
(setenv "PATH"
  (concat
   ;; Change this with your path to MSYS bin directory
   "c:\\Program Files\\Git\\usr\\bin;"
   (getenv "PATH")))
;;
;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; 
;; Modifying frames
(use-package frame-fns
  :load-path "C:/Users/jure.pelhan/AppData/Roaming/emacs_src/frame-fns")
(use-package frame-cmds
  :load-path "C:/Users/jure.pelhan/AppData/Roaming/emacs_src/frame-cmds"
  :bind (("C-c C-<up>" . 'move-frame-up)
         ("C-c C-<down>" . 'move-frame-down)
         ("C-c C-<left>" . 'move-frame-left)
         ("C-c C-<right>" . 'move-frame-right)
         ("C-c C-S-<up>" . 'shrink-frame)
         ("C-c C-S-<down>" . 'enlarge-frame)
         ("C-c C-S-<left>" . 'shrink-frame-horizontally)
         ("C-c C-S-<right>" . 'enlarge-frame-horizontally)))
;; 
;; *--ORG-MODE--
;; ~ org-capture
(add-hook 'org-mode-hook (lambda ()
                           (setq buffer-face-mode-face
                                 '(:family "Cascadia Code"
                                   :foundry "outline"
                                   :slant normal
                                   :weight regular
                                   :height 98
                                   :width normal))
                           (buffer-face-mode)))
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.notes.org" "Tasks")
         "* TODO %T [[file:%F::/\s+TODO%?\s+/]]")))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((latex . t)))
;;
;; *--Coding--
(add-hook 'prog-mode-hook (lambda ()
                            (setq buffer-face-mode-face
                                  '(:family "Cascadia Code"
                                    :foundry "outline"
                                    :slant normal
                                    :weight medium
                                    :height 95
                                    :width normal))
                            (buffer-face-mode)))
;; 
;; ~Rainbow delimiters
(use-package rainbow-delimiters
  :ensure t
  :defer t
  :hook prog-mode)
;;
;; ~Semantic
(use-package semantic
  :hook prog-mode)
;;
;; ~YASnippet
(use-package yasnippet
  :ensure t
  :defer t
  :custom
  (yas-indent-line 'fixed)
  :hook (prog-mode . yas-minor-mode))
;;
;; *--Python--
(add-to-list 'exec-path "C:\\ProgramData\\anaconda3")
;; ~ Environments
;; (use-package pyvenv
;;   :config
;;   (pyvenv-mode 1))
;; ~Elpy
(use-package elpy
  :ensure t
  :init
  (elpy-enable))
;;
;; *--C/C++--
(add-hook 'c-mode-hook (lambda () (setq-local c-basic-offset 2)
                         (highlight-indentation-set-offset 2)))
(add-hook 'c++-mode-hook (lambda () (setq-local c-basic-offset 2)
                           (highlight-indentation-set-offset 2)))
;; ~ CMake
(setq load-path (cons (expand-file-name "C:/Program Files/CMake/share/emacs/site-lisp") load-path))
(require 'cmake-mode)
;; 
;; *--Language server protocol--
;; ~ Pyright language server
;; (add-to-list 'exec-path "C:\\Users\\jure.pelhan\\AppData\\Roaming\\Python\\Python311\\Scripts")
;; (use-package lsp-pyright
;;   :ensure t
;;   :hook (python-mode . (lambda ()
;;                           (require 'lsp-pyright)
;;                           (lsp))))  ; or lsp-deferred
;; ~ Pylsp language server
(add-to-list 'exec-path "C:\\ProgramData\\anaconda3\\Scripts")
;;
;; ~ Lsp-mode
(require 'lsp-mode)
(setq lsp-use-plists 1)
(setq read-process-output-max (* 1024 1024))
(setq lsp-idle-delay 0.2)
(setq lsp-enable-snippet nil)
(setq lsp-pylsp-server-command "C:\\ProgramData\\anaconda3\\Scripts\\pylsp.exe")
(add-hook 'c++-mode-hook #'lsp)
(add-hook 'c-mode-hook #'lsp)
;; (add-hook 'python-mode-hook #'lsp)
(add-hook 'lsp-ui-imenu-mode-hook (lambda () (toggle-truncate-lines 1)))
;;
;; ~ Eglot
;; (use-package eglot
;;   :ensure t
;;   :defer t
;;   :hook (python-mode . eglot-ensure))
;;
(use-package magit
  :ensure t
  :bind* (("C-x o" . magit-section-cycle)
          :map magit-mode-map
          ([C-tab] . other-window)))
  ;; :hook (magit-mode . (lambda () (local-set-key (kbd "C-x o") 'magit-section-cy))))
;;
;; Treemacs
(lsp-treemacs-sync-mode 1)
;;
;; Narrow a list tools
;; Ivy config.
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq ivy-count-format "(%d/%d) ")
;;
;; Marginalia
;; Enable rich annotations using the Marginalia package
(use-package marginalia
  ;; Bind `marginalia-cycle' locally in the minibuffer.  To make the binding
  ;; available in the *Completions* buffer, add it to the
  ;; `completion-list-mode-map'.
  :bind (:map minibuffer-local-map
         ("M-A" . marginalia-cycle))

  ;; The :init section is always executed.
  :init

  ;; Marginalia must be activated in the :init section of use-package such that
  ;; the mode gets enabled right away. Note that this forces loading the
  ;; package.
  (marginalia-mode))
;;
;; Undo-tree
(require 'undo-tree)
(global-undo-tree-mode)
(setq undo-tree-auto-save-history nil)
;;
;; Auto-comletition tools
;; Company config.
;; (setq company-clang-executable "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\\Tools\\MSVC\\14.38.33130\\bin\\HostX86\\x86\\cl.exe")
(use-package company
  :ensure t
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.2)
  :hook (prog-mode . company-mode))
(add-hook 'prog-mode-hook (lambda () (progn
                                       (setq-local company-backends
                                                   (delete 'company-semantic company-backends))
                                       (add-to-list 'company-backends 'company-semantic t))))
;;
;; Syntax checking
;; Flycheck
;; (add-hook 'after-init-hook #'global-flycheck-mode)
;;
;; Projectile
(require 'projectile)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(defun projectile-multi-occur-symbol-at-point ()
  (interactive)
  (let ((symbl (thing-at-point 'symbol))
        (project (projectile-acquire-root)))
    (multi-occur (projectile-project-buffers project)
                 symbl)))
(defun bespoke/projectile-multi-occur (&optional nlines)
  "If double prefix argument calls projectile-multi-occur-symbol-at-point,
otherwise calls projectile-multi-occur."
  (interactive "P")
  (if (equal current-prefix-arg '(4)) (projectile-multi-occur-symbol-at-point)
    (projectile-multi-occur nlines)))
(define-key global-map [remap projectile-multi-occur] 'bespoke/projectile-multi-occur)
(projectile-mode +1)
;;
;; Org mode
(setq-default org-pretty-entities t)
(setq org-latex-create-formula-image-program 'dvipng)
;;
;; Indentation guides
(use-package highlight-indentation
  :ensure t
  :defer t
  ;; :load-path "C:/Users/jure.pelhan/AppData/Roaming/emacs_src/highlight-indentation"
  :config
        (set-face-background 'highlight-indentation-face "grey25")
        (set-face-background 'highlight-indentation-current-column-face "grey35")
        ;; :hook
        ;; (prog-mode . highlight-indentation-current-column-mode)
        ;; (prog-mode . highlight-indentation-mode)
        :bind ("C-x C-&" . (lambda () (interactive)
                             (call-interactively 'highlight-indentation-mode)
                             (call-interactively 'highlight-indentation-current-column-mode)))
        )
;;
;; Go to last change
;; (use-package goto-last-change
;;   :load-path "C:/Users/jure.pelhan/AppData/Roaming/emacs_src/goto-last-change")
(use-package goto-chg
  :bind ("C-c '" . goto-last-change))
;;
;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c l") 'mc/edit-lines)
;;
;; Move text
(move-text-default-bindings)
;;
;; Icons
(use-package nerd-icons)
;;
;; Emojis
(when (member "Segoe UI Emoji" (font-family-list))
  (set-fontset-font
   t 'symbol (font-spec :family "Segoe UI Emoji") nil 'prepend))
(setq w32-non-USB-fonts '((emoji Segoe\ UI\ Emoji)))
;; Fonts
(when (member "Symbols Nerd Font Mono" (font-family-list))
  (set-fontset-font
   t 'unicode (font-spec :family "Symbols Nerd Font Mono") nil 'prepend))
(when (member "Segoe UI Symbol" (font-family-list))
  (set-fontset-font
   t 'symbol (font-spec :family "Segoe UI Symbol") nil 'append))
;;
;; Expand Region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
;;
;;Personal configs.
(add-hook 'after-init-hook 'electric-pair-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)
(global-goto-address-mode 1)
(global-set-key [remap dabbrev-expand] 'hippie-expand)
;;
(define-key global-map [remap list-buffers] 'buffer-menu)
(define-key global-map [remap kill-buffer] 'kill-current-buffer)
(global-set-key [33554436] 'duplicate-dwim)
;;
(defun my/standard-bckwrd-delete ()
  "Standard Ctrl+Backspace."
  (interactive)
  (let ((cp (point)))
    (if (looking-back "\n")
        (if (ignore-errors (search-backward-regexp "[^\s\n]"))
            (progn (forward-char)
                   (kill-region cp (point)))
          (progn (goto-char (point-min))
                 (kill-region cp (point))))
      (if (looking-back "\s")
          (if (ignore-errors (search-backward-regexp "[^\s]"))
              (progn (forward-char)
                     (if (looking-back "\n")
                         (if (ignore-errors (search-backward-regexp "[^\s\n]"))
                             (progn (forward-char)
                                    (kill-region cp (point)))
                           (progn (goto-char (point-min))
                                  (kill-region cp (point))))
                       (if (looking-back "[[:alnum:]]")
                           (if (ignore-errors (search-backward-regexp "[^[:alnum:]]"))
                               (progn (forward-char)
                                      (kill-region cp (point)))
                             (backward-kill-word 1))
                         (if (ignore-errors (search-backward-regexp "[[:alnum:]\s\n]"))
                             (progn (forward-char)
                                    (kill-region cp (point)))
                           (progn (goto-char (point-min))
                                  (kill-region cp (point)))))))
            (progn (goto-char (point-min))
                 (kill-region cp (point))))
        (if (looking-back "[[:alnum:]]")
            (if (ignore-errors (search-backward-regexp "[^[:alnum:]]"))
                (progn (forward-char)
                       (kill-region cp (point)))
              (backward-kill-word 1))
          (if (ignore-errors (search-backward-regexp "[[:alnum:]\s\n]"))
              (progn (forward-char)
                     (kill-region cp (point)))
            (progn (goto-char (point-min))
                   (kill-region cp (point))))))))
 )
(global-set-key  [C-backspace] 'my/standard-bckwrd-delete )
(global-set-key [C-tab] 'other-window)
(global-set-key  [C-S-tab] (lambda () (interactive) (other-window -1)))
(global-set-key [M-f4] 'save-buffers-kill-emacs)
(global-set-key (kbd "C-`") (lambda () (interactive) (pulse-momentary-highlight-one-line (point))))
(global-set-key (kbd "C-.") 'avy-goto-char)
(global-set-key (kbd "C-,") 'avy-goto-char-timer)
(global-set-key (kbd "C-x C-.") 'ivy-mode)
(global-set-key (kbd "C-x C-`") 'cua-mode)
(add-hook 'cua-mode-hook 'force-mode-line-update)
(put 'narrow-to-region 'disabled nil)
(global-set-key (kbd "M-n") (lambda () (interactive) (scroll-up 2)))
(global-set-key (kbd "M-p") (lambda () (interactive) (scroll-down 2)))
(global-set-key (kbd "C-c w") 'forward-to-word)
(global-set-key (kbd "C-c b") 'backward-to-word)
(add-hook 'c++-mode-hook (lambda () (local-set-key (kbd "C-c C-f") 'lsp-clangd-find-other-file)))
(add-hook 'c-mode-hook (lambda () (local-set-key (kbd "C-c C-f") 'lsp-clangd-find-other-file)))
(defun close-and-kill-next-pane ()
  "If there are multiple windows, then close the other pane and kill the buffer in it also."
  (interactive)
  (other-window 1)
  (kill-this-buffer)
  (if (not (one-window-p))
      (delete-window)))
(global-set-key (kbd "C-x 4 o") 'close-and-kill-next-pane)
(global-set-key (kbd "C-c 0") 'kill-buffer-and-window)
;; function for switching prefix-argument behaveiour
(defun swap-args (fun)
  (if (not (equal (interactive-form fun)
                  '(interactive "P")))
      (error "Unexpected")
    (advice-add
     fun
     :around
     (lambda (x &rest args)
       "Swap the meaning the universal prefix argument"
       (if (called-interactively-p 'any)
           (apply x (cons (not (car args)) (cdr args)))
         (apply x args))))))
(swap-args #'exchange-point-and-mark)
(swap-args #'quit-window)
;; Generating doxygen comments
;; Adapted from https://emacs.stackexchange.com/questions/8006/is-there-a-yasnippet-producing-a-prepopulated-doxygen-comment
;; Could add storing to register with "senator-copy-tag-to-register",
;; which then allows to jumbp back to the tag via "jump-to-register".
(defun create-doxygen ()
  "Generate a doxygen comment snippet."
  (interactive)
  (let ((tag (semantic-current-tag)))
    (unless (semantic-tag-of-class-p tag 'function)
      (error "Expected function, got %S" tag))
    (semantic-go-to-tag tag)
    (let* ((name (semantic-tag-name tag))
           (attrs (semantic-tag-attributes tag))
           (args (plist-get attrs :arguments))
           (return-name (plist-get attrs :type))
           (ord 1))
      (if (listp return-name)
          (setq return-name (car return-name)))
      (split-line)
      (yas-expand-snippet
            (format
      "///----------------------------------------------------------------------------
/// <summary> ${1:%s} </summary>
///
/// %s
%s///----------------------------------------------------------------------------"
      name
      (mapconcat
       (lambda (x)
         (format "<param name=\"%s\"> ${%d:} </param>"
                 (car x) (cl-incf ord) (car x)))
       args
       "\n/// ")
      (if (and return-name (not (string-equal "void" return-name)))
          (format "/// <returns> type %s. ${%d:} </returns>\n" return-name (cl-incf ord))
        "")
      )))))
(add-hook 'prog-mode-hook (lambda () (local-set-key (kbd "C-c d") 'create-doxygen)))
(defun bespoke/insert-newline (&optional arg)
  (interactive "P")
  (if (equal current-prefix-arg '(4))
      (progn (beginning-of-line)
             (split-line)
             (indent-according-to-mode))
    (end-of-line)
    (newline-and-indent)
    ))
(global-set-key (kbd "C-c n") 'bespoke/insert-newline)
;;
(defun bespoke/copy-line (&optional arg)
  (interactive "P")
  (save-excursion
    (let ((kill-read-only-ok t)
          (buffer-read-only t))
      (move-beginning-of-line 1)
      (kill-whole-line arg)))
  )
(global-set-key (kbd "C-c k") 'bespoke/copy-line)
;;
(defun bespoke/mark-embraced-outer ()
  (interactive)
  (progn
    (backward-up-list 1 t t)
    (push-mark (point))
    (forward-sexp)
    (activate-mark))
  )
(global-set-key (kbd "C-c a") 'bespoke/mark-embraced-outer)
;;
(defun bespoke/mark-embraced-inner ()
  (interactive)
  (progn
    (backward-up-list 1 t t)
    (push-mark (+ 1 (point)))
    (forward-sexp)
    (backward-char)
    (activate-mark)
    )
  )
(global-set-key (kbd "C-c i") 'bespoke/mark-embraced-inner)
;;
;; Enable disabled commands
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
