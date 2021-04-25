(*
   CS 31600
   Hw 4
   Jacob Yang
   yangjl@pnw.edu
*)


(* 1.
Write a function repeatChar with type
   fn : int*char -> string
that builds a string with the single character
repeated the integer number f times.

Write this function using recursion on the integer.

repeatChar (5, #"P") ==> "PPPPP"
repeatChar (0, #"P") ==> ""
*)

fun repeatChar (0, P) = ""
|   repeatChar (a, P) = str(P) ^ repeatChar (a-1, P); 

(* 2.
Write a function zeroNegs with type
   fn : int list -> int list
that copies the numbers from the input list to the
result list except that negative nubers should be replaced by 0.

zeroNegs [2, ~3, 4, ~5, ~6, 2, 0, ~1, 8] ==> [2, 0, 4, 0, 0, 2, 0, 0, 8]
*)

fun zeroNegs [] = []
|   zeroNegs (x::xs) = if x < 0 then 0::zeroNegs (xs) 
    else x::zeroNegs (xs);

(* 3.
Write a function deleteOdds with type
   fn : 'a list -> 'a list
that removes from the input list every other element,
starting with removing the first element.

deleteOdds [1, 2, 3, 4, 5] ==> [2, 4]
deleteOdds [1] ==> []
deleteOdds [] ==> []
*)

fun deleteOdds [] = []
|   deleteOdds [a] = []
|   deleteOdds (_::b::bs) = b::deleteOdds (bs);

(* 4.
Write a function deleteEvens with type
   fn : 'a list -> 'a list
that removes from the input list every other element,
starting with removing the second element.

deleteEvens [1, 2, 3, 4, 5] ==> [1, 3, 5]
deleteEvens [1] ==> [1]
deleteEvens [] ==> []
*)

fun deleteEvens [] = []
|   deleteEvens [a] = [a]
|   deleteEvens (b::_::bs) = b::deleteEvens (bs);

(* 5.
Write a function count with type
   fn : ''a * ''a list -> int
that counts the number of times the given element appears
in the given list.

Notice that the type of this function is polymorphic with the
type variable ''a. This means that the function only works with
types that are "equality types", that is, types that can be
compared using the "=" operator, as in
   if ( x = y )
(see page 69 of our textbook). Most types are equality types
(the most important exception is the real numbers). When you
write polymorphic functions with equality types, ML will give
you a "calling polyEqual" warning. You should ignore this warning.

count (2, [1,2,3,2,4,5,6,2,7,8,9,2,2]) ==> 5
*)

fun count (_, []) = 0
|   count (a, L::Ls) = if(a = L) then 1 + count (a,Ls)
    else count (a,Ls);

(* 6.
Write a function dropNth with type
   fn : int * 'a list -> 'a list
that removes the n'th element from the input list (the 0'th
element is the first element). If n is greater than the
length of the list, then don't drop anything. You do not
need to consider negative values for n.
*)

fun dropNth (_,[]) = []
|   dropNth (a, L::Ls) = if a = 1 then dropNth (a - 1,Ls)
    else L::dropNth (a - 1,Ls);  


(* 7.
Write a function addNth with type
   fn : int * 'a * 'a list -> 'a list
that returns a list which has all the elements from the
input list but it has the given input element as the new list's
n'th element (the 0'th element is the first element). The new
list will be one longer than the input list. If n is greater
than the length of the input list, put the input element at
the end of the new list. You do not need to consider negative
values for n.
*)

fun addNth (_,i,[]) = [i]
|   addNth (a,i,L::Ls) = if a = 1 then i::L::Ls
    else L::addNth (a - 1,i,Ls);  


(* 8.
Write a function replaceNth with type
   fn : int * 'a * 'a list -> 'a list
that returns a list which has all the elements from the input
list except it has the given input element as the new list's
n'th element (the 0'th element is the first element). The new
list will be the same length as the input list. If n is greater
than the length of the input list, then don't replace any
element of the input list.
*)

fun replaceNth (_,i,[]) = []
|   replaceNth (a,i,L::Ls) = if a = 1 then i::Ls
    else L::replaceNth (a - 1,i,Ls); 

(* 9.
Write a function trimList with type
   fn : 'a list * 'b list -> 'b list
that removes from the front of the second list the number
of elements equal to the length of the first list.

Write this function recursively. Don't define trimList
using drop and length.

trimList ([1,2,3], [4,5,6,7,8,9,10]) ==> [7,8,9,10]
trimList ([1,2,3,4,5], [1,2,3]) ==> []
*)

fun trimList (_, nil) = []
|   trimList (nil, L) = L
|   trimList (x::xs, y::ys) = trimList (xs, ys);

(* 10.
Write a function removeDups with type
   fn : ''a list -> ''a list
that removes from the input list successive duplications.

removeDups [1,1,1,2,3,4,4,4,5,6,6,6,6,6,7,8] ==> [1,2,3,4,5,6,7,8]
removeDups [1,1,1,0,0,0,1,1,0,0,0,1,1,0,0,1] ==> [1,0,1,0,1,0,1]
*)

fun removeDups [] = []
|   removeDups [x] = [x]
|   removeDups (x::y::ys) = if (x = y) then removeDups (y::ys)
    else x::removeDups (y::ys);

(* 11.
Write a function combine with the type
   fn : 'a list * 'a list -> 'a list
that alternates, in the output list, the elements
from the two input lists. The length of the output
list should be the sum of the lengths of the two
input lists.

combine [1, 2, 3, 4, 5] [10, 20] ==> [1, 10, 2, 20, 3, 4, 5]
combine [10, 20] [1, 2, 3, 4, 5] ==> [10, 1, 20, 2, 3, 4, 5]
*)

fun combine (nil, nil) = []
|   combine (nil, L) = L
|   combine (L, nil) = L
|   combine (x::xs, y::ys) = x::y::combine (xs,ys);


(* 12.
Write a function combine' with the type
   fn : 'a list * 'a list -> 'a list
that alternates, in the output list, the elements
from the two input lists. The length of the output
list should be twice the minimum of the lengths of
the two input lists.

combine' [1, 2, 3, 4, 5] [10, 20] ==> [1, 10, 2, 20]
combine' [10, 20] [1, 2, 3, 4, 5] ==> [10, 1, 20, 2]
*)

fun combine' (nil,nil) = []
|   combine' (nil, L) = []
|   combine' (L, nil) = []
|   combine' (x::xs, y::ys) = x::y::combine' (xs,ys);


