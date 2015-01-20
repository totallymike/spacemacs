(defvar rubocop-pre-extensions
  '(
    ;; pre extension rubocops go here
    )
  "List of all extensions to load before the packages.")

(defvar rubocop-post-extensions
  '(
    ;; post extension rubocops go here
    )
  "List of all extensions to load after the packages.")

;; For each extension, define a function rubocop/init-<extension-rubocop>
;;
;; (defun rubocop/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
