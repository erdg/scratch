(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de drawCanvas (Id Dly)
   (make
      (csBeginPath)
      (csMoveTo 75 50)
      (csLineTo 100 75)
      (csLineTo 100 25)
      (csFill) ) )
      
(de canvasTest ()
   (app)
   (action
      (html 0 "Triangle" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 400 300) ) ) ) )

(server 8080 "!canvasTest")
