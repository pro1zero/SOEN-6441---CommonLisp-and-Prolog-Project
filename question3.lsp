=======================================================================================
Here too, we do have the cube function for the cube, allLists function to check whether 
all the 3 lists are lists or not. EQUALLENGTH function checks whether the lists are the
same lengths or not.(In order to do that, we need to check the parameter type hence, 
call to the allLists function). 

Minimum funciton to find the min of 3 nums. and final statement is used when all the 
values are the same.(hence we pass the first value).

The main function MINS does all the necessary checks and if successful, then a 1 time 
call is made to the check function which then uses recursion to show the output.

Again, if there is some error in the type of paramters, the call to the check function wont 
be made.
=======================================================================================

=======================================================================================
Nikhil Patil
Jenish Soni
=======================================================================================


Utility cube function:
(defun cube (x)
	(* x x x))

Utility equalLength function:
(defun length3(s1 s2 s3)
	(if(and (allLists s1 s2 s3) (= (length2 s1) (length2 s2) (length2 s3)))
		t
		nil))

Utility length function:
(defun length2 (lst)
	(if (null lst)
		0
		(+ 1 (length2 (cdr lst)))))

Utility allLists function:
(defun allLists(s1 s2 s3)
	(if (and (listp s1) (listp s2) (listp s3))
		t
		nil))

Utility Minimum function:
(defun minimum(x y z)
	(cond 	((and (< x y) (< x z)) x)
			((and (< y x) (< y z)) y)
			((and (< z x) (< z y)) z)
			(t x))

Main function:
(defun mins(s1 s2 s3)
                  (cond	((not(and (length3 s1 s2 s3) (allLists s1 s2 s3))) nil)
						(t (check s1 s2 s3))))

Main function(HELPER METHOD):
(defun check(s1 s2 s3)
	 (cond	((null s1) nil)
		  	((null s2) nil)
			((null s3) nil)
			(t (cons (cube(minimum (car s1) (car s2) (car s3))) (check (cdr s1) (cdr s2) (cdr s3))))

