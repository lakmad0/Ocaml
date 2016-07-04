(*
 * Author : Lakshitha Madushan
 *)

type point_3d = float*float*float ;;

let cross_product (p1:point_3d) (p2:point_3d) :point_3d = 
	let (u1, u2, u3) = p1 in 
	let (v1, v2, v3) = p2 in
	
	let i = u2*.v3 -. v2*.u3 in
	let j = v1*.u3 -. u1*.v3 in
	let k = u1*.v2 -. v1*.u2 in	
	
	(i, j, k);;


cross_product (1., 2., 3.) (2., 3., 4.);;