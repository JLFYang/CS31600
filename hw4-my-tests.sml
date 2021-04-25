(*
   CS 31600
   Hw 4 (tests),
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

repeatChar (0, #"A");
repeatChar (1, #"B");
repeatChar (2, #"C");
repeatChar (10, #"G");

(* 2.
Write a function zeroNegs with type
   fn : int list -> int list
that copies the numbers from the input list to the
result list except that negative nubers should be replaced by 0.

zeroNegs [2, ~3, 4, ~5, ~6, 2, 0, ~1, 8] ==> [2, 0, 4, 0, 0, 2, 0, 0, 8]
*)

zeroNegs [];
zeroNegs [2];
zeroNegs [~2];
zeroNegs [~2,2,4,5,6,~6,~7,9,3,6,~8];

(* 3.
Write a function deleteOdds with type
   fn : 'a list -> 'a list
that removes from the input list every other element,
starting with removing the first element.

deleteOdds [1, 2, 3, 4, 5] ==> [2, 4]
deleteOdds [1] ==> []
deleteOdds [] ==> []
*)

deleteOdds nil : int list;
deleteOdds [1];
deleteOdds [2,3,4,5];
deleteOdds [2,3,4,5,6];
deleteOdds [] : real list;
deleteOdds [1.0];
deleteOdds [2.0,3.0,4.0,5.0];
deleteOdds [2.0,3.0,4.0,5.0,6.0];
deleteOdds [] : string list;
deleteOdds ["dogs"];
deleteOdds ["dogs","cats","goose","chicken"];
deleteOdds ["dogs","cats","goose","chicken","gorilla"];
deleteOdds [] : char list;
deleteOdds [#"D"];
deleteOdds [#"D",#"F",#"H",#"C"];
deleteOdds [#"D",#"F",#"H",#"C",#"G"];

(* 4.
Write a function deleteEvens with type
   fn : 'a list -> 'a list
that removes from the input list every other element,
starting with removing the second element.

deleteEvens [1, 2, 3, 4, 5] ==> [1, 3, 5]
deleteEvens [1] ==> [1]
deleteEvens [] ==> []
*)

deleteEvens nil : int list;
deleteEvens [1];
deleteEvens [2,3,4,5];
deleteEvens [2,3,4,5,6];
deleteEvens [] : real list;
deleteEvens [1.0];
deleteEvens [2.0,3.0,4.0,5.0];
deleteEvens [2.0,3.0,4.0,5.0,6.0];
deleteEvens [] : string list;
deleteEvens ["dogs"];
deleteEvens ["dogs","cats","goose","chicken"];
deleteEvens ["dogs","cats","goose","chicken","gorilla"];
deleteEvens [] : char list;  
deleteEvens [#"D"];
deleteEvens [#"D",#"F",#"H",#"C"];
deleteEvens [#"D",#"F",#"H",#"C",#"G"];


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

count (1, []);
count (1, [1]);
count (2, [1,4,5,7,9,5,4,4]);
count (2, [1,4,5,7,9,2,5,4,2,2,4,2]);

(* 6.
Write a function dropNth with type
   fn : int * 'a list -> 'a list
that removes the n'th element from the input list (the 0'th
element is the first element). If n is greater than the
length of the list, then don't drop anything. You do not
need to consider negative values for n.
*)

dropNth (3,nil) : int list;
dropNth (3,[2]);
dropNth (3,[2,5,6,7,4]);
dropNth (3,nil) : real list;
dropNth (3,[2.0]);
dropNth (3,[2.0,5.0,6.0,7.0,4.0]);

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

addNth (3,2,nil) : int list;
addNth (3,1,[2]);
addNth (3,9,[2,5,6,7,4]);
addNth (3,9.0,nil) : real list;
addNth (3,8.0,[2.0]);
addNth (3,3.0,[2.0,5.0,6.0,7.0,4.0]);

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

replaceNth (3,2,nil) : int list;
replaceNth (3,1,[2]);
replaceNth (3,9,[2,5,6,7,4]);
replaceNth (3,9.0,nil) : real list;
replaceNth (3,8.0,[2.0]);
replaceNth (3,3.0,[2.0,5.0,6.0,7.0,4.0]);

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

trimList ([],[]) : int list;
trimList ([],[]) : real list;
trimList ([],[]) : char list;
trimList ([1,2,3,4,5],[8,7,5,3,7,8,0]);
trimList ([1.0,2.0,3.0,4.0,5.0],[8.0,7.0,5.0,3.0,7.0,8.0,0.0]);
trimList ([1.0,2.0,3.0,4.0,5.0,6.0],[1.0,2.0,3.0,4.0]);

(* 10.
Write a function removeDups with type
   fn : ''a list -> ''a list
that removes from the input list successive duplications.

removeDups [1,1,1,2,3,4,4,4,5,6,6,6,6,6,7,8] ==> [1,2,3,4,5,6,7,8]
removeDups [1,1,1,0,0,0,1,1,0,0,0,1,1,0,0,1] ==> [1,0,1,0,1,0,1]
*)

removeDups [] : int list;
removeDups [1,1,0,0,1,1,1,0,1,0,1,0,1,1,0,0];
removeDups [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6,6];

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


combine ([],[]) : int list;
combine ([],[]) : real list;
combine ([],[]) : char list;
combine ([10,20,30,40,50],[2,4]);
combine ([2,4],[10,20,30,40,50]);
combine ([1,2,3,4,5],[6,7,8,9,0]);
combine ([1.0,2.0,3.0,4.0,5.0],[6.0,7.0,8.0,9.0,0.0]);


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

combine' ([],[]) : int list;
combine' ([],[]) : real list;
combine' ([],[]) : char list;
combine' ([10,20,30,40,50],[2,4]);
combine' ([2,4],[10,20,30,40,50]);
combine' ([1,2,3,4,5],[6,7,8,9,0]);
combine' ([1.0,2.0,3.0,4.0,5.0],[6.0,7.0,8.0,9.0,0.0]);



