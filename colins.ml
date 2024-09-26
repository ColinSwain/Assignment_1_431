(*Problem 1 Solution
  Author: Colin Swain*)
let x = [1; 3; 5; 7; 9];;
let y = [];;
let z =[3];;

let rec prob1 l =
    match l with
    | [] -> 2
    | hd :: [] -> 1
    | hd :: tl -> 0
;;

prob1 x;;
prob1 y;;
prob1 z;;

(*Problem 2 Solution
  Author Colin Swain*)

let prob2 l =
    match l with
    | []-> []
    | hd :: [] -> l
    | hd :: tl->  tl @ hd :: []
;;

prob2 x;;
prob2 y;;
prob2 z;;

(*Problem 3 Solution
  Author Colin Swain*)
(*if length is one return empty list*)

let prob3  l =  
    match List.rev l with 
    | [] -> []
    | hd :: [] -> []
    | hd :: tl -> List.rev tl
;;

prob3 x;;
prob3 y;;
prob3 z;;

(*Problem 4 Solution
  Author Colin Swain*)
let rec prob4 l rmv = 
  match l with
  | [] -> []
  | hd :: [] ->  if hd == rmv then [] else hd :: []
  | hd :: tl -> if hd == rmv then prob4 tl rmv else hd :: prob4 tl rmv 

prob4 x 3;;
prob4 y 3;;
prob4 z 3;;

(*Problem 7 Solution
  Author Colin Swain*)
(*0 based index, returns 0 if not a possible binomial coefficent *)
let rec prob7 n k =   
  match (n, k) with 
  | (_,0) -> 1
  | (0,_)-> 0
  | (n,k) when k>n -> 0
  | (n, k) -> prob7 (n-1) (k-1) + prob7 (n-1) k

prob7 0 0;;
prob7 1 2;;
prob7 3 2;;
prob7 6 4;;

