(*
    CS 31600
    Hw 5
    Jacob Yang
    yangjl@pnw.edu
*)


(* 1.
Define a function called ex1 that has this type.

fn : ('a -> 'b) -> 'a list -> 'c list -> ('b * 'c) list

You can make the function as simple as possilbe.
*)

fun ex1 h (x::xs) (y::ys) = (h x,y)::ex1 h xs ys;
ex1 : ('a -> 'b) -> 'a list -> 'c list -> ('b * 'c) list;

(* 2.
Define a function called ex2 that has this type.

fn : ('a -> 'b -> 'a) -> 'a -> 'b -> 'a list

You can make the function as simple as possilbe.
*)

fun ex2 h x y = h (h x y) y :: ex2 h x y;
ex2 : ('a -> 'b -> 'a) -> 'a -> 'b -> 'a list;

(* 3.
Define a function called ex3 that has this type.

fn : ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c

You can make the function as simple as possilbe.
*)

fun ex3 h x y = h y (x y);
ex3 : ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c;

(* 4.
Define a function called ex4 that has this type.

fn : ('a -> 'b -> 'c) -> ('d -> 'a) -> ('d -> 'b) -> 'd -> 'c

You can make the function as simple as possilbe.
*)

fun ex4 h x y z = h (x z) (y z);
ex4 : ('a -> 'b -> 'c) -> ('d -> 'a) -> ('d -> 'b) -> 'd -> 'c;


(* 5.
Define a function takeUntil with this type.

fn : ('a -> bool) -> 'a list -> 'a list

The function "takes" items from the input list and puts them
in the output list until it finds an item in the input list
that makes the boolean function true.

takeUntil (fn x => x<0) [4,5,6,1,0,8,0,~1,3,2,5,8]  ==> [4,5,6,1,0,8,0]
*)
fun takeUntil h [] = []
| takeUntil h (x::xs) = if (h x) then [] else x::takeUntil h xs;

(* 6.
Define a function firstWith with this type

fn : ('a -> bool) -> 'a list -> 'a

that returns the first item from the list that
makes the boolean function true. There may be no
item in the list the satisfies the boolean function.
In that case, raise the Empty exception.
*)
fun firstWith h [] = raise Empty
| firstWith h (x::xs) = if (h x) then x else firstWith h xs;

(*
Problems 7 - 11 are from pages 145 - 147 of the textbook.
Be sure to read the explanation of the exercises given near
the top of page 144. In particular, these exercises should be
written in one line of code making use of map, foldr, or foldl.
*)

(* 7.
Do Exercise 10 at the end of Chapter 9 of the textbook.

*)
fun dupList h = foldr(fn (x, y) => x::x::y) [] h;

(* 8.
Do Exercise 14 at the end of Chapter 9 of the textbook.

*)
fun maxpairs h = map (fn (x,y) => if x > y then x else y) h;

(* 9.
Exercise 15 at the end of Chapter 9 of the textbook.

*)
fun myimplode h = foldr (op ^) "" (foldr (fn (x,y) => String.str(x)::y) [] h);

(* 10.
Do Exercise 16 at the end of Chapter 9 of the textbook.

*)
fun lconcat h = foldr (op @) [] h;

(* 11.
Do Exercise 21 at the end of Chapter 9 of the textbook.

*)
fun less (e, h) = foldr (fn (x, y) => if x < e then x::y else y) [] h;



