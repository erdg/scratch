(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")


### does not work... what a surprise. 
### programming is hard. I just want picolisp to play nicely other cool things
(de anijs-test ()
   (app)
   (action
      (html 0 "AniJS test" "http://anijs.github.io/lib/animationcss/animate.css" NIL 
         (form NIL
            (prin "<script src=\"anijs-min.js\"></script>") 
            (<div> '((id . main) (data-anijs . "if: mouseover, on: body, do: swing animated"))) ) ) ) ) 

(server 8080 "!anijs-test")
