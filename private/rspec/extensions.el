(defvar rspec-pre-extensions
  '(
    ;; pre extension rspecs go here
    )
  "List of all extensions to load before the packages.")

(defvar rspec-post-extensions
  '(
    ;; post extension rspecs go here
    )
  "List of all extensions to load after the packages.")

;; For each extension, define a function rspec/init-<extension-rspec>
;;
;; (defun rspec/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
