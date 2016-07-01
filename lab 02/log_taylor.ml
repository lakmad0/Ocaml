(*
 * Author : Lakshitha Madushan
 *)
 
let rec log_taylor (x:float) (n:int): float =
	if n = 1 then x
	else
		let sign = if (n mod 2) = 0 then -1. else 1. in
		let term = x ** float_of_int n in
		(sign *. term) /. float_of_int n +. log_taylor (x) (n-1) ;;
