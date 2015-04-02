#!/usr/bin/picolisp /usr/lib/picolisp/lib.l

(load "@ext.l" "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(de start ()
   (and (app) (zero number*))
   (action
      (html 0 "Enable/Disable" "@lib.css" NIL
         (form NIL
            (gui '(+Var +Able +NumField) 'number* '(=0 number*) 20 "Value")
            (gui '(+Able +JS +Button) '(> 10 number*) "Increment"
               '(inc 'number*) )
            (gui '(+Able +Button) '(gt0 number*) "Decrement"
               '(dec 'number*) ) ) ) ) )

(server 8080 "!start")
(wait)
