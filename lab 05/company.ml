(*
 * Author : Lakshitha Madushan
 *)
 
type employee = {fname:string; lname:string; salary:int; marital_status:bool};;

type department = {department_name:string; head:employee};;

let isSameHead (d1:department) (d2:department) :bool = 
	if d1.head = d2.head then true
	else false;;