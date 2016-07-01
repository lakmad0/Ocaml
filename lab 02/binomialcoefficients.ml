(*
 * Author : Lakshitha Madushan
 *)
 
let rec binomialCoefficient (n:int) (k:int) : int =
  if (k = 0 || k = n) then 1
  else binomialCoefficient (n-1) (k-1) + binomialCoefficient (n-1) (k) ;;

binomialCoefficient 5 2 ;;

