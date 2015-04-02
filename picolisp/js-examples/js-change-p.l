(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de js-changer ()
   (app)
   (action
      (html 0 "Change <p>" "@lib.css" NIL
         (form NIL
            (<h1> NIL "What can JavaScript do?")
            (<p> '(id . demo) 
               "JavaScript can change HTML content.")
            (gui '(+OnClick +Button) 
               "document.getElementById('demo').innerHTML = 'Hello JavaScript!'; return false"
               "Click me!" ) ) ) ) )

(server 8080 "!js-changer")
