(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de drawCanvas (Id Dly)
   (make
      (csBeginPath)
      (csMoveTo 50 20)
      (csBezierCurveTo 230 30 150 60 50 100)
      (csStroke)

      (csFillStyle "blue")
      (csFillRect 50 20 10 10)
      (csFillRect 50 100 10 10)

      (csFillStyle "red")
      (csFillRect 230 30 10 10)
      (csFillRect 150 70 10 10) ) )

(de canvasTest ()
   (app)
   (action
      (html 0 "Canvas Test" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 400 300) ) ) ) )

(server 8080 "!canvasTest")
