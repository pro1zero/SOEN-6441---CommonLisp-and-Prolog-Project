=======================================================================================
This question comprises of the pairwise comparision, so we return the list with more 
number of elements. While the frames in the call stack, if the tail of any list is null
then we return the (cdr) of the other list. 

Until, otherwise, we simply add the greater element while the index(i) exist.

=======================================================================================

=======================================================================================
Zaid Abdulhadi
Jenish Soni
=======================================================================================

Main function:
(defun maxlist(s1 s2)
	(cond 	((null s1) s2)
			((null s2) s1)
			((> (car s1) (car s2)) (cons (car s1) (maxlist (cdr s1) (cdr s2))))
			(t (cons (car s2) (maxlist (cdr s1) (cdr s2))))))

