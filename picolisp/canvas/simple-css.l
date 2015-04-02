(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")


(de css-test ()
   (app)
   (action
      (html 0 "Simple Css" "style.css" NIL
         (form NIL
            (<h1> NIL "An epic header!")
            (<h2> NIL "A secondary header")
            (<h1> 'box "this should be different")
            (javascript NIL "alert(\"Hello, world!\");")
            (<p> NIL 
               "This is a red paragraph!" ) ) ) ) )

(server 8080 "!css-test")
