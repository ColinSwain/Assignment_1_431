(*Problem 1 Solution
  Author: Colin Swain*)
let x = [1; 3; 5; 7; 9];;
let y = [];;
let z =[3];;
let w = [0; 1; 0; 2; 3; 0; 1];;

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
(*if hd =  y, concat tail remove head*)
let rec prob4 l rmv = 
  match l with
  | [] -> []
  | hd :: [] ->  
    let 

prob4 x;;
prob4 y;;
prob4 z;;

(*Problem 5 Solution
  Author Colin Swain*)
let prob5 l = 