(load "@lib/math.l")

(class +Active)
# inp val sum usec

(dm T ()
   (unless (assoc -100 *Run)  # Install timer task
      (task -100 100       # Update objects every 0.1 sec
         (mapc 'update> *Actives) ) )
   (=: inp '((U) 0))    # Set zero input function
   (=: val 0)           # Initialize last value
   (=: sum 0)           # Initialize sum
   (=: usec (usec))     # and time
   (push '*Actives This) ) # Install in notification list

(dm input> (Fun)
   (=: inp Fun) )

(dm update> ()
   (let (U (usec) V ((: inp) U)) # Get time, calculat val
      (inc (:: sum)
         (*/
            (+ V (: val))
            (- U (: usec))
            2.0 ) )
      (=: val V)
      (=: usec U) ) )

(dm output> ()
   (format (: sum) *Scl) )  # Get result

(dm stop> ()
   (unless (del This '*Actives) # Remove last active obj
      (task -100) ) ) # Yes: uninstall timer task

(de integrate ()
   (let Obj (new '(+Active))
      (input> Obj
         '((U) (sin (*/ pi U 1.0))) )
      (wait 2000)
      (input> Obj '((U) 0))
      (wait 500)
      (prinl "Output: " (output> Obj))
      (stop> Obj) ) )
