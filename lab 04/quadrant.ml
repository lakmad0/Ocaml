type coordinate = {x:float;y:float};;

let quadrant (point:coordinate) : string =
  let sign (x:float) : int =
    if x > 0. then 1
    else if x < 0. then -1
    else 0 in
    match ( sign(point.x) , sign(point.y) ) with
      | (0,0)   -> "Origin" 
      | (0,_)   -> "On the Y axis"
      | (_,0)   -> "On the X axis"
      | (1,1)   -> "Quadrant 1"
      | (-1,1)  -> "Quadrant 2"
      | (-1,-1) -> "Quadrant 3"
      | (1,-1)  -> "Quadrant 4"
      | (_,_)   -> "Error" ;;


