(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de drawCanvas (Id Dly)
   (make

      # Filled triangle
      (csBeginPath)
      (csMoveTo 25 25)
      (csLineTo 105 25)
      (csLineTo 25 105)
      (csFill)

      # Stroked triangle
      (csBeginPath)
      (csMoveTo 125 125)
      (csLineTo 125 45)
      (csLineTo 45 125)
      (csClosePath)
      (csStroke) ) )

(de canvasTest ()
   (app)
   (action
      (html 0 "Triangles" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 400 300) ) ) ) )

(server 8080 "!canvasTest")
