;;; extensions.el --- linum-off Layer extensions File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar linum-off-pre-extensions
  '(
    ;; pre extension linum-offs go here
    )
  "List of all extensions to load before the packages.")

(defvar linum-off-post-extensions
  '(
    ;; post extension linum-offs go here
    linum-off
    )
  "List of all extensions to load after the packages.")

(defun linum-off/init-linum-off ()
  "Initialize linum-off customizations"
  (use-package linum
    :init
    (progn
      (defcustom linum-disabled-modes-list '(eshell-mode wl-summary-mode compilation-mode org-mode text-mode dired-mode doc-view-mode image-mode)
        "* List of modes disabled when global linum mode is on"
        :type '(repeat (sexp :tag "Major mode"))
        :tag " Major modes where linum is disabled: "
        :group 'linum
        )
      (defcustom linum-disable-starred-buffers 't
        "* Disable buffers that have stars in them like *Gnu Emacs*"
        :type 'boolean
        :group 'linum)

      (defun linum-on ()
        "* When linum is running globally, disable line number in modes defined in `linum-disabled-modes-list'. Changed by linum-off. Also turns off numbering in starred modes like *scratch*"

        (unless (or (minibufferp)
                    (member major-mode linum-disabled-modes-list)
                    (string-match "*" (buffer-name))
                    (> (buffer-size) 3000000)) ;; disable linum on buffer greater than 3MB, otherwise it's unbearably slow
          (linum-mode 1))))))
;; For each extension, define a function linum-off/init-<extension-linum-off>
;;
;; (defun linum-off/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
