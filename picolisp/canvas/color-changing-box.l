(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l")

(de cool-box ()
   (html 0 "Boximation" "animation.css" NIL
      (<div>) ) )

(server 8080 "!cool-box")
