let list1 = [1;4;7;3];;
let list2 = ['a';'b';'c';'d'];;
let list3 = [1;0;4;0;5;6;1;0;3;0];;
let list4 = dup list2;;





(*Problem 5 Solution
  Author: Marcus Bollacker*)

let rec onezerocount list count =
  match list with 
  | [] -> count (*count needs to be passed*)
  | 0 :: t -> onezerocount t (count + 1)
  | 1 :: t -> onezerocount t (count + 1)
  | _ :: t -> onezerocount t count;;


onezerocount list3 0;;





(*Problem 6 Solution
  Author: Marcus Bollacker*)

let rec makepairs x list =
  match list with 
  | [] -> []
  | h::t -> (x,h)::(makepairs x t);;

makepairs 1 list1;;





(*Problem 8 Solution
  Author: Marcus Bollacker*)

let rec dup list =
  match list with
  | [] -> []
  | h::t -> h :: h :: (dup t);;

dup list2;;





(*Problem 9 Solution
  Author: Marcus Bollacker*)

let rec undup list =
  match list with
  | [] -> []
  | [h] -> raise (Failure "bad input") 
  | h :: (h2 :: t) when h = h2 -> h :: undup t
  | _ -> raise (Failure "bad input")

undup list4;;
undup list2;;