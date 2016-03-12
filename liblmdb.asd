(defsystem liblmdb
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :maintainer "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")
  :depends-on (:cffi)
  :components ((:module "src"
                :serial t
                :components
                ((:file "package")
                 (:file "lispify")
                 (:file "liblmdb"))))
  :description "Low-level LMDB bindings."
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md")))
