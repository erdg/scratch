(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de drawCanvas (Id Dly)
   (make
      (csFillText "Suck a Dick" 20 40) ) )

(de canvasTest ()
   (app)
   (action
      (html 0 "Canvas Test" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 400 300) ) ) ) )

(server 8080 "!canvasTest")
