(*
   CS 31600
   Hw 3
   Jacob Yang
   yangjl@pnw.edu
*)


(* Excercise 2, page 115 *) 
fun member (e,L::Ls) = e=L orelse member (e,Ls)
|   member (e,nil) = false;

(* Excercise 3, page 116 *)
fun less (e,nil) = nil
| less (e,L::Ls) = if e > L then L::less (e,Ls)
       else less(e,Ls);

(* Excercise 4, page 116 *)
fun repeats (nil) = false
| repeats (L::nil) = false
| repeats (L::Ls) = if L = hd(Ls) then true
	else repeats(Ls);
 
(* Excercise 6' *)
fun insert (e,nil) = [e]
|       insert(e,L::Ls) = if e <= L then e::L::Ls
		else L::insert(e,Ls);

(* Excercise 6'' *)
fun sort nil = nil
|   sort (L::Ls) = 
	let
	   fun insert (e,nil) = [e]
	   |   insert (e,L::Ls) = if e <= L then e::L::Ls
		  else L::insert (e,Ls)
	in insert (L, sort Ls) end;

(* Excercise 7', pages 116-117 *)
fun icmp (a, b) = a < b;
fun ircmp(a, b) = a > b;
fun rcmp (a : real, b : real) = a < b;
fun rrcmp(a : real, b : real) = a > b;
fun ccmp (a : char, b : char) = a < b;
fun crcmp(a : char, b : char) = a > b;

fun insert2 (e,nil,cmp) = [e]
|   insert2 (e,L::Ls,cmp) = if (cmp (e, L)) then e::L::Ls
    else L::insert2 (e,Ls,cmp);

fun sort2 (nil,cmp) = nil
|   sort2 (L::Ls,cmp) = 
	let
	   fun insert2 (e,nil) = [e]
	   |   insert2 (e,L::Ls) = if (cmp (e, L)) then e::L::Ls
	   else L::insert2 (e,Ls);
	in insert2 (L, sort2 (Ls,cmp)) end;

(* Excercise 8' *)
fun twiddle [] = []
| twiddle ((x,y,z)::Ls) = (z,x)::twiddle Ls; 

(* Excercise 9' *)
fun flipper nil = []
|   flipper [x] = [x]
|   flipper (x::y::ys) = y::x::flipper ys;

