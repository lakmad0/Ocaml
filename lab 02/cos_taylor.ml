(*
 * Author : Lakshitha Madushan
 *)

let rec cos_taylor (x:float)(n:int):float =
	if n = 0 then 1.
	else
		let sign = if (n mod 2) = 0 then 1. else -1. in
		let rec factorial (n:int):int =
			if n = 0 then 1
			else if n = 1 then 1
			else
				n * factorial (n-1) in
		let term = x ** float_of_int (2 * n) in
		sign *. term /. float_of_int (factorial (2*n)) +. cos_taylor (x) (n-1);;