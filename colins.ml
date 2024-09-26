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
  (*One method uses the recursive, purely additive formula ( n k ) = ( n − 1 k − 1 ) + ( n − 1 k )
  {\displaystyle {\binom {n}{k}}={\binom {n-1}{k-1}}+{\binom {n-1}{k}}} for all integers n , 
  k {\displaystyle n,k} such that 1 ≤ k < n , {\displaystyle 1\leq k<n,} with boundary values ( n 0 )
   = ( n n ) = 1 {\displaystyle {\binom {n}{0}}={\binom {n}{n}}=1} for all integers n ≥ 0. *)

let rec prob7 n k =   
  match n with 
  | k -> 1
  | n -> prob7 (n-1) (k-1) + prob7 (n-1) k

prob7 1 2;;


