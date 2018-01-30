(defun dotspacemacs/init ()

  (setq-default

   ;; layers
   dotspacemacs-configuration-layers '(
                                       themes-megapack
                                       doom-themes
                                       elixir
                                       javascript
                                       dash
                                       (auto-completion :variables
                                                        auto-completion-enable-snippets-in-popup t
                                                        auto-completion-tab-key-behavior 'complete)
                                       (version-control :variables
                                                        version-control-diff-side 'left)
                                       (osx :variables
                                            osx-use-option-as-meta nil)
                                       )

   ;; Line numbers
   dotspacemacs-line-numbers 'relative

   ;; Trailing space
   dotspacemacs-whitespace-cleanup 'trailing

   ;; Theme
   dotspacemacs-themes '(
                         doom-nova
                         zenburn
                         spacemacs-light
                         )

   ;; Font
   dotspacemacs-default-font '("Monaco"
                               :size 15
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)

   ;; Open maximized
   dotspacemacs-maximized-at-startup t
   ))

;;==================================================

(defun dotspacemacs/user-init ()

  ;; https://github.com/syl20bnr/spacemacs/issues/3920#issuecomment-284208619
  (setq exec-path-from-shell-check-startup-files nil)

  )

;;==================================================

(defun dotspacemacs/user-config ()
  ;; Remove separator bar
  (setq powerline-default-separator nil)

  ;; no wrap
  (add-hook 'hack-local-variables-hook (lambda () (setq truncate-lines t)))

  ;; Remove filename max limit column on helm buffer
  (setq helm-buffer-max-length nil)

  ;; Enable projectile cache
  (setq projectile-enable-caching t)

  ;; Enable 'w' navigate trought camelcase
  (spacemacs/toggle-camel-case-motion-globally-on)

  ;; Increse line-spacing
  (setq-default line-spacing 3)

  ;; Habilita o evil-mc-mode para todos os buffers
  (global-evil-mc-mode  1)
  )

;;==================================================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a142def5bab9c1d1964eb2bf7506e790fa09df44aa9f3e41abd198f00cd6577e" "868f73b5cf78e72ca2402e1d48675e49cc9a9619c5544af7bf216515d22b58e7" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" "b5ecb5523d1a1e119dfed036e7921b4ba00ef95ac408b51d0cd1ca74870aeb14" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-commit with-editor git-gutter diff-hl reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl helm-company helm-c-yasnippet fuzzy company-tern dash-functional tern company-statistics auto-yasnippet ac-ispell auto-complete zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme web-beautify ob-elixir livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc helm-dash flycheck-mix flycheck-credo flycheck dash-at-point coffee-mode alchemist company elixir-mode ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))

;;==================================================

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
