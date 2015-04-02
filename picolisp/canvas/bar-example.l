(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(de main ()
   (app)
   (action
      (html 0 "Menu Bar" '("@lib.css" "@lib/phone.css") NIL
         (<bar> 
            ("Pages"
               ("Page1" "!page1")
               ("Page2" "!page2") ) ) ) ) )

(de page1 ()
   (<h1> NIL "Welcome to Page 1") )

(de page2 ()
   (<h1> NIL "Welcome to Page 2") )

(server 8080 "!main") 
