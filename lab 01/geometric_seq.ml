(*
 * Author : Lakshitha Madushan
 *)

let geometric_seq_term (a:float) (r:float) (n:int) :float = 
	let r_n = r ** float_of_int(n) in 
	a *. r_n;;
	
let geometric_seq_sum (a:float) (r:float) (n:int) :float = 
	let r_n = r ** float_of_int(n) in 
	a *. (1. -. r_n) /. (1. -.r);;
