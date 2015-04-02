(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(de work ()
   (app)
   (action
      (html 0 "Ungrid Test" '("ungrid.css" "@lib.css") NIL
         (form NIL 
         (<div> 'row
            (<p> 'col
               "This is paragraph 1" )
            (<p> 'col
               "This is paragraph 2" )
            (<p> 'col
               "This is paragraph 3" ) ) ) ) ) )

(server 8080 "!work")


