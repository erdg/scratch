(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(de main ()
   (app)
   (action
      (html 0 "Changing Style" "@lib.css" NIL
         (form NIL
            (<h1> '(id . demo) 
               "The Coolest Header of All Time" )
            (gui '(+OnClick +Button)
               "document.getElementById('demo').style.color = 'green'; return false"
               "Click it, bitch!" ) ) ) ) ) 

(server 8080 "!main")

