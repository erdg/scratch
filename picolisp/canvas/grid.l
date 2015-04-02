(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de drawCanvas (Id Dly)
   (make
      (csBeginPath)
      (for (X 0 (>= 500 X) (inc 'X 10))
            (csMoveTo X 0)
            (csLineTo X 375) )
      (for (Y 0 (>= 375 Y) (inc 'Y 10))
            (csMoveTo 0 Y)
            (csLineTo 500 Y) )
      (csClosePath)
      (csStrokeStyle "#eee")
      (csStroke) ) )

(de canvasTest ()
   (app)
   (action
      (html 0 "Grid" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 500 375) ) ) ) )

(server 8080 "!canvasTest")
