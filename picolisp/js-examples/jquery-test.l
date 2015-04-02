(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(push1 '*JS (allow "@lib/jquery-1.11.2.js"))

(de jqueryTest ()
   (app)
   (action
      (html 0 "jquery test" "@lib.css" NIL 
         (form NIL
            (<h1> '(id . demo) NIL)
            (javascript NIL
               "function myFunction() {
                  $('#demo').html('Hello jQuery')
               };" )
            (gui '(+OnClick +Button) 
               "myFunction(); return false"
               "click me" ) ) ) ) )

(server 8080 "!jqueryTest") 
