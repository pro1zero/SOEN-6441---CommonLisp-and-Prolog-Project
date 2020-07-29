=======================================================================================
The cube function is to calculate the cube of the number, minus for subtraction, 
equalLength function to check whether the length of both lists are same or not.
In order to do that, we need to check whether the parameters passed are lists or
not. (nested call to bothLists). Length2 function is our own version for calculating 
the list length using recursion.

BothLists function checks whether the parameters passed are lists or not using the 
inbuilt function "listp".

Coming to the main part, (DIFF), this function checks all the necessary checks to be
performed on the lists. If the paramters are in their perfect semantics, then the call
to the function CHECK is made which simply does the cube, minus and null operations 
using recursion.

If, there is some error in the type of paramters, the call to the check function wont 
be made.

=======================================================================================

=======================================================================================
Nikhil Patil
Jenish Soni
=======================================================================================

Utility cube function:
(defun cube (x)
	(* x x x))

Utility minus function:
(defun minus(x y)
	(- x y))

Utility equalLength function:
(defun newLength(s1 s2)
	(if(and (bothLists s1 s2) (= (length2 s1) (length2 s2)))
		t
		nil))

Utility length function:
(defun length2 (lst)
	(if (null lst)
		0
		(+ 1 (length2 (cdr lst)))))

Utility bothLists function:
(defun bothLists(s1 s2)
	(if (and (listp s1) (listp s2))
		t
		nil))

Main function:
(defun diff(s1 s2)
              (cond ((not(and(bothLists s1 s2)  (equalLength s1 s2) )) nil) 
                    (t (check s1 s2))))

Main function(HELPER METHOD):
(defun check(s1 s2)
              (cond ((null s1) nil)
                    ((null s2) nil)
                    (t (cons (cube (minus (car s1) (car s2))) (check (cdr s1) (cdr s2))))))
