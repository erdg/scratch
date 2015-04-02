(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de js-date-button ()
   (app)
   (action
      (html 0 "Canvas Test" "@lib.css" NIL
         (form NIL
            (gui '(+OnClick +Button) 
               "document.getElementById('demo').innerHTML = Date()"
               "Click me to display Date and Time." )
            (<p> '(id . demo) NIL) ) ) ) )

(server 8080 "!js-date-button")
