(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de drawCanvas (Id Dly)
   (make

      (csFillStyle "rgb(200, 0, 0)")
      (csFillRect 10 10 55 50)

      (csFillStyle "rgba(0, 0, 200, 0.5)")
      (csFillRect 30 30 55 50) ) )


(de canvasTest ()
   (app)
   (action
      (html 0 "Canvas Test" "@lib.css" '((onload . "drawCanvas('$testID', -1)"))
         (form NIL
            (<canvas> "$testID" 150 150) ) ) ) )

(server 8080 "!canvasTest")
