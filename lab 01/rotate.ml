(*
 * Author : Lakshitha Madushan
 * 
 * x' = x * cos(theta) - y * sin(theta)
 * y' = x * sin(theta) + y * cos(theta)
 *
 *)

let rotate (x:float) (y:float) (theta:float) = 
	let pi = 22. /. 7. in
	let theta_rad = pi *. theta /. 180. in 
	let new_x = x *. cos theta_rad -. y *. sin theta_rad in 
	let new_y =  x *. sin theta_rad +. y *. cos theta_rad in
	(new_x, new_y);;


rotate 4. 0. 90. ;;