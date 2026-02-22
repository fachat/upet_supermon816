
 100 if a goto 200
 110 poke 53,6*16:clr
 120 a=1
 130 load"sermon",8,1
 200 open2,2,2,chr$(15)+chr$(0)
 210 print "running monitor on ser1"
 220 sys6*4096
