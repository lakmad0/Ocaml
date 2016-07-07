(*
 * Author : Lakshitha Madushan
 *)
 
type complex_cartesian = {x:float; y:float};;

type complex_polar = {r:float; theta:float};;

let classify_numbers (c:complex_polar) :string = 
	if c.r ** (sin c.theta) = 0. then "real"
	else if c.r ** (cos c.theta) = 0. then "imaginary"
	else "mixed";;

let cartesian_to_polar (c:complex_cartesian) :complex_polar = 
	let magnitude (x, y) = 
		sqrt(x*.x +. y*.y) in
	{r = magnitude(c.x, c.y) ; theta = atan (c.y /. c.x) };;
	
let polar = {r=1.0; theta=1.};;
let cartesian = {x=1.0; y=1.0};;