(*
 * Author : Lakshitha Madushan
 *)

let capitalise (c:char) :char = 
	char_of_int(int_of_char(c) + int_of_char 'A' - int_of_char 'a');;
	
capitalise 'c';;