(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(de main ()
   (app)
   (action
      (html 0 "Window Alert" "@lib.css" NIL
         (form NIL
            (<h1> NIL "Super Cool Page")
            (gui '(+OnClick +Button)
               "window.alert(5 + 6); return false"
               "Click it!" ) ) ) ) )

(server 8080 "!main") 
