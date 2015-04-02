(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de js-change-element ()
   (app)
   (action
      (html 0 "Change Element" "@lib.css" NIL
         (form NIL
            (gui '(+OnClick +Button) 
               "this.innerHTML=Date()"
               "The time is?" ) ) ) ) ) 

(server 8080 "!js-change-element")
