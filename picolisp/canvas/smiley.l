(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l" "@lib/math.l") 

(de drawCanvas (Id Dly)
   (make
      (csBeginPath)
      (csArc 75 75 50 0 (format pi/2 *Scl) "true")  # Outer
      (csMoveTo 110 75)
      (csArc 75 75 35 0 (format pi/2 *Scl) "false") # Mouth
      (csMoveTo 65 65)
      (csArc 60 65 5 0 (format pi/2 *Scl) "true")  # Left eye
      (csMoveTo 95 65)
      (csArc 90 65 5 0 (format pi/2 *Scl) "true")  # Right Eye
      (csStroke) ) )

(de canvasTest ()
   (app)
   (action
      (html 0 "Smiley" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 400 300) ) ) ) )

(server 8080 "!canvasTest")
