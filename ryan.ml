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


(*11. (a) a definition of the type of a binary tree of floats*)

type tree =
| Leaf
| Node of float * tree * tree


(*11. (b) the declaration of an actual binary tree of floats, of at least depth (height) 3*)

let prob11 =
  Node (1.2,
    Node (2.3,
      Node (3.1, Leaf, Leaf),
      Leaf
        ),
      Leaf
      )
;;


