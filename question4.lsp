=======================================================================================
The "compatible" function is to for the necessary checks whether the first argument is
a list and the second argument is a POSITIVE num or not. We do the latter check using the
inbuilt function called "ffloor" which calculates the floor value of the num and compare
it with itself.

And, the listp and numberp inbuilt function to check the type of the arguments, ofcourse.

The main functin FILTER, checks all necessary conditions and if no errors(NIL) occurs 
gives the call to recursive function check.
=======================================================================================

=======================================================================================
Zaid Abdulhadi
Jenish Soni
=======================================================================================


Utility compatibility function:
(defun compatible(s1 x)
              (if(and (listp s1) (numberp x))
                  (if (and (> x 0) (= (floor x) x))
                      t
                    nil)
                nil))
              

Main function:
(defun filter(s1 element)
	(cond 	((not(compatible s1 element)) nil)
			(t (check s1 element))))

Main function(HELPER METHOD):
(defun check(s1 element)
       (cond((null s1) nil)
            (t (if (> (car s1) element)
				(cons (car s1) (check (cdr s1) element))
			(check (cdr s1) element) ))))


