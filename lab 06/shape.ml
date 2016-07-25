(*
 * Author : Lakshitha Madushan
 * 
 * // rotate
 * x' = x * cos(theta) - y * sin(theta)
 * y' = x * sin(theta) + y * cos(theta)
 *
 *)

type point2d = { x:float; y:float };;

type element =
	| Circle of point2d * float
	| Line of point2d * point2d;;



let translate (e:element) (p:point2d) :element = 
	let move (pt:point2d) :point2d = 
		{x=pt.x +. p.x; y=pt.y +. p.y} in 
	match e with
		| Circle(p0, r) -> Circle(move p0, r)
		| Line(p0, p1) -> Line(move p0, move p1);;
		
let rotate (e:element) (theta:float) :element = 
	let rotate_point (p:point2d) :  point2d = 
		{x=p.x*.cos theta -. p.y*.sin theta ; y=p.y*.cos theta +. p.x*.sin theta} in
	 match e with
	 	| Circle(p0, r) -> Circle(p0, r)
	 	| Line(p0, p1) -> Line(p0, rotate_point p1);;


(******************b************************)

type stroke = Pencil | Brush | Crayon ;;

type colour = Red | Blue | Green | Black ;;

type style = {strk:stroke; width:int; clr:colour};;

type element =
	| Circle of point2d * float * style
	| Line of point2d * point2d * style;;
	