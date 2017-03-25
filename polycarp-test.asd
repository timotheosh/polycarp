(in-package :cl-user)
(defpackage polycarp-test-asd
  (:use :cl :asdf))
(in-package :polycarp-test-asd)

(defsystem polycarp-test
  :author "Tim Hawes"
  :license ""
  :depends-on (:polycarp
               :prove)
  :components ((:module "t"
                :components
                ((:file "polycarp"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
