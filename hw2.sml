(*
  CS 31600
  Hw 2
  Jacob Yang
  yangjl@pnw.edu	
*)
df

(* Exercise 4 *)
fun min3 (a,b,c) =
       if a < b andalso a < c then a
       else if b < c then b
       else c;

(* Exercise 5 *)
fun red3 (a,b,c) = (a,c);

(* Exercise 6 *)
fun thirds s = hd (tl (tl (explode s) ) );

(* Exercise 7 *)
fun cycle1 a =
       if null a then nil
       else (tl a) @ [hd a];

(* Exercise 8 *)
fun min3 (a,b,c):real =
       if a < b andalso a < c then a
       else if b < c then b
       else c;
fun mid3 (a,b,c):real =
       if (a < b andalso a > c) orelse (a > b andalso a < c) then a
       else if (b < a andalso b > c) orelse (b > a andalso b < c) then b
       else c;
fun max3 (a,b,c):real =
       if a > b andalso a > c then a
       else if b > c then b
       else c;
fun sort3 (a,b,c) =
       [min3(a,b,c),mid3(a,b,c),max3(a,b,c)];

(* Exercise 9 *)
fun del3 (a::b::c::d) = [a,b]@d; 

(* Exercise 10 *)
fun sqsum a =
       if a = 0 then 0
       else (a * a) + sqsum(a - 1);

(* Exercise 11 *)
fun cycle1 a =
       if null a then nil
       else (tl a) @ [hd a];
fun cycle (x, a) =
       if a = 0 then x
       else cycle1(cycle(x,a-1));

(* Exercise 13 *)
fun maxhelper ([],a) = a
       | maxhelper ((x::xs), a) =
               if x > a then maxhelper (xs, x)
               else maxhelper (xs,a);
fun max a = maxhelper (tl a, hd a);


