(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de drawCanvas (Id Dly)
   (make
      (csFillRect 25 25 100 100)      # Solid 
      (csClearRect 45 45 60 60)       # Clears area
      (csStrokeRect 50 50 50 50) ) )  # Outline

(de canvasTest ()
   (app)
   (action
      (html 0 "Rectangle Functions" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 400 300) ) ) ) )

(server 8080 "!canvasTest")
