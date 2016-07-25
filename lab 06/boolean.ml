(*
	Author: Lakshitha Madushan
	Reference: https://en.wikipedia.org/wiki/Three-valued_logic
*)

type boolean = True | False ;;

let implies (x: boolean) (y:boolean) : boolean =
	match (x,y) with
	| (True,False) -> False
	| (_,_) -> True;;

let xor (x: boolean) (y:boolean) : boolean =
	match (x,y) with
	| (True,True) | (False,False) -> False
	| (_,_) -> True;;

(*    Three-valued logic  *)

type boolean = True | False | Unknown ;; 

let andlogic (x: boolean) (y:  boolean) : boolean = 
  	match (x,y) with
 	| (True, True) -> True
	| (False, _) | (_, False) -> False
	| (_, _) -> Unknown;;

let orlogic (x:boolean) (y:boolean) :boolean = 
	match (x, y) with
		| (False, False) -> False
		| (True, _) | (_, True) -> True
		| (_, _) -> Unknown;;
