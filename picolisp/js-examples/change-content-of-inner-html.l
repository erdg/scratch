(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(de main ()
   (app)
   (action
      (html 0 "Change Content" "@lib.css" Nil
         (form NIL
            (<h1> NIL "A Super Cool Webpage!")
            (<p> '(id . demo))
            (gui '(+Button) "Click" NIL)
            (javascript NIL
               "document.getElementById('demo').innerHTML = 'Hello World!';" ) ) ) ) )

(server 8080 "!main")
