(load "@ext.l" "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(one *Dir)

(de start ()
   (app)
   (action
      (html 0 "animation" "@lib.css" NIL
         (form NIL
            (gui '(+Button)
               '(pack (do *Dir (rot '`(chop "Hello World! "))))
               '(setq *Dir (if (= 1 *Dir) 12 1)) )
            (gui '(+Click +Auto +Button) 400 'This 1000 "Start") ) ) ) )

(server 8080 "!start")

