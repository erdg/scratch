(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(push1 '*JS (allow "@lib/jquery-1.11.2.js"))

(de main ()
   (app)
   (action
      (html 0 "Disappearing Paragraphs" "@lib.css" NIL
         (form NIL
            (<p> NIL "Click the button below to make me disappear!")
            (gui '(+OnClick +Button)
               "$('p').hide(); return false"
               "Be Gone!" ) ) ) ) )

(server 8080 "!main") 
