(defsystem liblmdb
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :maintainer "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage "https://github.com/antimer/liblmdb"
  :bug-tracker "https://github.com/antimer/liblmdb/issues"
  :source-control (:git "git@github.com:antimer/liblmdb.git")
  :depends-on (:cffi :trivial-features)
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
