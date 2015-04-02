(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de draw-line (X1 Y1 X2 Y2)
   (csBeginPath)
   (csMoveTo X1 Y1)
   (csLineTo X2 Y2)
   (csClosePath) )

(de drawCanvas (Id Dly)
   (make
      (csBeginPath)
      (csMoveTo 0 0)
      (csLineTo 55 90)
      (csLineTo 34 92)
      (csClosePath)
      (csStroke) 
      
      (csBeginPath)
      (csMoveTo 400 300)
      (csLineTo 93 155)
      (csClosePath)
      (csStroke)

      (csBeginPath)
      (csMoveTo 352 31)
      (csLineTo 39 256)
      (csClosePath)
      (csStroke)

      (draw-line 34 51 234 213)
      (csStroke)

      (draw-line 54 69 43 23)
      (csStroke) ) )
      

(de canvasTest ()
   (app)
   (action
      (html 0 "Canvas Test" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 400 300)
            (gui '(+OnClick +Button) 
               "return drawCanvas('$testID', -1)"
               "Reload Canvas" ) ) ) ) )

(server 8080 "!canvasTest")
