### lame-utils ###

# A humorous guide through the land of picoLisp.

# In order to improve at the art of the function, we must write
# an incredible number of shitty ones.


# We define functions with (de ...)

(de add7651 (N)
   # adds seven thousand 
   # six hundred fifty one
   # to a number N
   (+ N 7651) )


(de add-14-to-list (Lst)
   (mapcar
      '((N) (+ 14))
      Lst) )
