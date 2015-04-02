# *Value *Plot *Offset

(allowed ()
   "!zappel" "@lib.css" )

(load "@lib/http.l" "@lib/xhtml.l" "@lib/form.l" "@lib/canvas.l")

(de *DX . 600)
(de *DY . 300)

(setq
   *Delay 256
   *DX/10 (/ *DX 10)
   *DY/2 (/ *DY 2) )

(de drawCanvas (Id Dly)
   (when (>= Dly  -1)
      (set *Plot
        (- *DY *DY/2 (setq *Value (rand -100 +100))) )
      (pop '*Plot) )
   (make
      (csClearRect 0 0 *DX *DY)
      (csFill Text *Value 20 20)
      (csStrokeStyle "red")
      (csStrokeLine 0 *DY/2 *DX *DY/2)
      (csStrokeStyle "green")
      (csBeginPath)
      (let Y1 (pop '*Plot)
         (and Y1 (csMoveTo 0 (- @ *Offset)))
         (for X *DX/10
            (let Y2 (- (pop '*Plot) *Offset)
               (if2 Y2 Y1
                  (csLineTo (* X 10) Y2)
                  (csMoveTo (* X 10) Y2) )
               (setq Y1 Y2) ) ) )
      (csStroke) ) )


(de zappel ()
   (app)
   (action
      (html 0 "Zappel" '("@lib.css" . "canvas {border: 1px solid}") NIL
         (form NIL
            (<h2> NIL "Zappel Demo")
            (<tab>
               ("Zappel"
                  (<canvas> "$zappel" *DX *DY)
                  (javascript NIL "onload=drawCanvas('$zappel', " *Delay ")")
                  (gui '(+Able +Button) '(> *Delay 1) "Faster"
                     '(setq *Delay (>> 1 *Delay)) )
                  (gui '(+Button) "Slower"
                     '(setq *Delay (>> -1 *Delay)) ) )
               ("Single"
                  (<canvas> "$single" *DX *DY)
                  (javascript NIL "onload=drawCanvas('$single', -2)")
                  (gui '(+OnClick +Button)
                     "return drawCanvas('$single', -1)"
                     "Step" ) ) )
            (----)
            (gui '(+Able +Button) '(n0 *Offset) "Pos = 0" '(zero *Offset))
            (gui '(+Button) "++ Pos" '(inc *Offset 10))
            (gui '(+Button) "-- Pos" '(dec *Offset 10)) ) ) ) )

(de main ()
   (do (inc *DX/10)
      (fifo '*Plot NIL) )
   (zero *Offset) )

(de go ()
   (server 8080 "!zappel") )
