(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de js-in-body ()
   (app)
   (action
      (html 0 "JS in Body" "@lib.css" NIL
         (form NIL
            (<h1> NIL "JavaScript in Body")
            (<p> '(id . demo) "A Paragraph.")
            (javascript NIL
               "function myFunction() {
                  document.getElementById(\"demo\").innerHTML = \"Paragraph changed.\"
                  };" )
            (gui '(+OnClick +Button) 
               "myFunction(); return false"
               "Try it!" ) ) ) ) )

(server 8080 "!js-in-body")
