(def 'libmapper* "/usr/local/lib/libmapper-0.so")

(de mdev_new (Nm Port Adm)
   (native `libmapper* "mdev_new" 'I Nm Port Adm) )

(de mdev_ready (Dev)
   (native `libmapper* "mdev_ready" 'I Dev) )

(de mdev_free (Dev)
   (native `libmapper* "mdev_free" NIL Dev) )


# FIXME
(de mdev_add_input (Dev Nm Len Typ Unit Min Max Handler Data)
   (native `libmapper* "mdev_add_input") )  
#


(de mdev_poll (Dev Msec)
   (native `libmapper* "mdev_poll" 'I Dev Msec) )


(de mdev-add-output (DEV NAME LEN TYPE UNIT MIN MAX HANDLER DATA)
   (native `libmapper* "mdev_add_input" 'I DEV NAME LEN TYPE UNIT MIN MAX) )


