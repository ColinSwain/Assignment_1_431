(*Problem 6 Solution
  Author: Marcus Bollacker*)

let rec makepairs x list =
  match list with 
  | [] -> []
  | h::t -> (x,h)::(makepairs x t);;




(*Problem 8 Solution
  Author: Marcus Bollacker*)

let rec dup list =
  match list with
  | [] -> []
  | h::t -> h :: h ::(dup t);;




(*Problem 9 Solution
  Author: Marcus Bollacker*)

  let rec undup list =
    match list with
    | [] -> []
    | [x] -> raise (Failure "bad input") 