(de bar (Ttl . Prg)
   (action
      (html 0 Ttl '("@lib.css" "@lib/phone.css") NIL
         (<ping> 2)
         (<layout>
            ((0 36 'bar)
               (<div> @
                  (<bar>
                     ("App"
                        ("Home" "!work") )
                     # Menu options here
                     ) ) )
            ((0 NIL 'main)
               (<div> (bar? @)
                  (run Prg 1) ) ) ) ) ) )


(de work ()
   (setq *Url "!work")
   (when (app)
