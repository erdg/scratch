(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(push1 '*JS (allow "@lib/jquery-1.11.2.js"))

(de main ()
   (app)
   (action
      (html 0 "Disappearing Paragraphs" "@lib.css" NIL
         (form NIL
            (<h1> 'test "This is a heading")
            (<p> 'test "This is a paragraph.")
            (<p> NIL "This is another paragraph.")
            (gui '(+OnClick +Button)
               "$('.test').hide(); return false"
               "Banish all elements of class 'test'!" ) ) ) ) )

(server 8080 "!main") 
