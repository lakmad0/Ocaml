(*
 * Author : Lakshitha Madushan
 *)

type vertex = float * float * float ;;

type triangle = {v1: vertex; v2: vertex; v3: vertex} ;;

let classify_triangles (t:  triangle): string =
	let side_length (p1:vertex) (p2:vertex): float =
		let (p1x, p1y, p1z) = p1 in
		let (p2x, p2y, p2z) = p2 in
			sqrt((p2x -. p1x) ** 2.0 +. (p2y -. p1y) ** 2.0 +. (p2z -. p1z) ** 2.0) in

	let side12 = side_length t.v1 t.v2 in 
	let side13 = side_length t.v1 t.v3 in 
	let side23 = side_length t.v2 t.v3 in 

	if side12 = side23 then 
		if side23 = side13 then
			"equilateral"
		else
			"isosceles"
	else
		"scalene";;


let t = {v1=(0., 0., 0.); v2=(2., 0., 0.); v3=(1., 1., 0.)};;

