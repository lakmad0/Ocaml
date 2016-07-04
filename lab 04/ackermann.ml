(*
 * Author : Lakshitha Madushan
 *)

let rec ackermann (n:int)(m:int) :int =
	match (n,m) with
	| (_,0) -> n+1
	| (0,_) -> ackermann (m-1) 1
	| (_,_) -> ackermann (m-1) (ackermann (m) (n-1)) ;;