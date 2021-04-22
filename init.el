
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
 
(add-to-list 'package-archives
'("melpa" . "http://melpa.org/packages/") t)
 
(package-initialize)
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(add-to-list 'load-path "/Users/chaitanya/.emacs.d/elpa/yasnippet-snippets-20210408.1234")
(require 'yasnippet)
(yas-global-mode 1)

;;Zenburn theme
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

;;C++ autocomplete
(use-package auto-complete
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))
;;C++ font
(use-package modern-cpp-font-lock
:ensure t)

;;Enable line numbers
(global-linum-mode t)

;;Python config
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;;Magit integration
(use-package magit
  :ensure t
  :init
  (progn
    (bind-key "C-x g" 'magit-status)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("59b1d6fa127ccd7de28dc059422d675b91e82aebd1952e453c5b9687d68b693c" "e3dd6693e140e87e8926b1f13e82e89d3ee9afd3b387a6b0d0a51ca8471f910b" default)))
 '(package-selected-packages (quote (yasnippet-snippets zenburn-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


