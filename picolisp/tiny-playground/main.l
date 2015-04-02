(allowed ("tiny-playground/")
   "!work" "!stop" "@lib.css" "lib/phone.css" "!psh" )

(load
   "@lib/http.l"
   "@lib/xhtml.l"
   "@lib/form.l"
   "@lib/adm.l" )

(setq
   *Css "@lib.css"
   *Blob "tiny-playground/blob/"
   *Salt (16 . "$6$@1$") )

(load 
   "tiny-playground/er.l"
   "tiny-playground/gui.l" )


# Entry point

(de main ()
   (pool "tiny.db") )

(de go ()
   (pw 12)
   (task (port 4040)  # Query server in background
      (let? Sock (accept @)
         (unless (fork)  # Child Process
            (in Sock
               (while (rd)
                  (sync)
                  (tell)
                  (out Sock
                     (pr (eval @)) ) ) )
            (bye) )
         (close Sock) ) )
   (forked)
   (rollback)
   (server 8080 "!work") )
