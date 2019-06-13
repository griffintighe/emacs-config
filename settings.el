(add-to-list 'default-frame-alist
                       '(font . "Noto Mono-16"))
(require 'package)
(add-to-list 'package-archives
             '(melpa . "https://melpa.org/packages/") t)
(package-initialize)

(defhydra hydra-zoom (global-map "C-c <f2>")
  "zoom"
 ("w <right>" split-window-right "right")
 ("w <down>"   split-window-below "down"))
(setq-default grep-command "grep -i -nH -e ")
(if (fboundp 'blink-cursor-mode)
    (blink-cursor-mode -1))
(global-hl-line-mode 1)
;(ac-config-default)
 (setq-default mode-line-format
       (list "-"
        'mode-line-mule-info
        'mode-line-modified
        'mode-line-frame-identification
	"%I   "
	 "   "
        "%b "
        ;; Note that this is evaluated while making the list.
        ;; It makes a mode line construct which is just a string.
        ; (getenv "HOST")
       ":"
        'default-directory
        "   "
        'global-mode-string
     ;   "   %[("
;        '(:eval (mode-line-mode-name))
;        'mode-line-process
 ;       'minor-mode-alist
					;    "%n"
	
	"%m "
   ;     ")%]--"
        ;'(which-func-mode ("" which-func-format "--"))
        ;'(line-number-mode "L%l--")
					;'(column-number-mode "C%c--")
		 "   "
        '(  ."%c|%l")))


                    
;(setq display-line-numbers nil)
(linum-mode t)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
    (setq calendar-location-name "Santa Barbara, CA") 
    (setq calendar-latitude 34.42)
(setq calendar-longitude -119.69)
    (require 'theme-changer)
    (change-theme 'spacemacs-light 'spacemacs-dark)
