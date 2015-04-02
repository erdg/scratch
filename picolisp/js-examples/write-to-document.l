(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(de main ()
   (app)
   (action
      (html 0 "Write to Doc" "@lib.css" NIL
         (form NIL
            (<h1> NIL "Hellz Yes!")
            (gui '(+OnClick +Button)
               "document.write('You have written to the document.'); return false"
               "Click here to write to the document!" ) ) ) ) )

(server 8080 "!main")
