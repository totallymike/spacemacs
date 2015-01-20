(defvar editorconfig-pre-extensions
  '(
    ;; pre extension editorconfigs go here
    )
  "List of all extensions to load before the packages.")

(defvar editorconfig-post-extensions
  '(
    ;; post extension editorconfigs go here
    )
  "List of all extensions to load after the packages.")

;; For each extension, define a function editorconfig/init-<extension-editorconfig>
;;
;; (defun editorconfig/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
