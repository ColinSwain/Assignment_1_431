(*Ryan Broadbent 9/21/24*)

(* a function that finds the smallest element in a list*
(hint: use pattern matching and recursion;*
raise (Failure "Empty list") if the list is empty;*
there is already a min function that computes the smaller of 2 numbers)*)

(*#10 problem solution...*)

let list_1 = [1; 2; 3; 4; 0];;


let rec prob10 n =
  match n with
  | [] -> failwith "Empty ist"
  | [x] -> x
  | head :: tail ->
    let curr = prob10 tail in
    if head < curr then head else curr
    
;;

prob10 list_1;;