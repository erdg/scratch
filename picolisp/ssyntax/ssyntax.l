(de ssyntax? (Sym)
   (and 
      (sym? Sym)
      (has-ssyntax-char? Sym) ) )


(de has-ssyntax-char? (Sym)
   (find
      '((S)
         (or (= S ".") (= S "!")) )
      (chop Sym) ) )

(de expand-ssyntax (SYM)
   (cond 
      ((or (insym? "." SYM) (insym? "!" SYM))
       expand-sexpr ) ) )

(de expand-sexpr (SYM)
   (print "You've expanded your SEXPR!") ) 
   

(de insym? (C SYM)
   (member C (chop SYM)) )
