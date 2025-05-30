;;;; ./org/publish/publish.el
(progn
  (org-setup "CFD" (home-ancestor 2) :remote-prefix "//n133906/home/_namatv/public_html/Site/") ;; (:prj-root "dev/tcl/ICEM/MnasIcemUtils" :prefix "//n133906/home/_namatv/public_html/Site/CFD/")
  ;;(org-setup "CFD" (home-ancestor 2) :remote-prefix "//fscluster/KO/Temp/Отд11/") 
 
  (setq org-publish-project-alist
        `(
          ,(org-pub-list "pub"          "org/publish")
          ,(org-pub-list "main"         "org")
          ,(org-pub-list "ext"          "org/ext" :recursive t)          
;;;;          
          ,(org-att-list "pub"    "el"  "org/publish")
;;;; source
          ,(org-att-list "tcl" "tcl"    ".")          
          ))
  (org-web-list))

(progn
  (require 'ox-publish)
  (setq org-publish-use-timestamps-flag nil)
  (setq org-confirm-babel-evaluate nil) ; выполнение всех блоков кода без подтверждения    
  (org-publish-project "website"))
