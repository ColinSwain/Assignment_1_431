(*Problem 1 Solution
  Author: Colin Swain*)
let x = [1; 3; 5; 7; 9];;
let y = [];;
let z =[3];;

open List 
(*let rec = recursive. let = non recursive*)
let prob1 l =
    match l with
    | [] -> 2
    | hd :: [] -> 1
    | hd :: tl :: _ -> 0
;;

prob1 x;;
prob1 y;;
prob1 z;;

(*Problem 2 Solution
  Author Colin Swain*)

let prob2 l = 
    match l with
    | [] -> []
    | hd :: []-> hd @ []
    | hd :: tl :: _ -> tl @ hd @ []

;;

prob2 x;;
prob2 y;;
prob2 z;;

(*Problem 3 Solution
  Author Colin Swain*)

  let rec prob3 l = 
    match l with 
    | [] -> []
    | hd :: [] -> l
    | hd :: tl :: _ -> (* reverse list then remove hd then reverse list*)
  ;;

(*Problem 4 Solution
  Author Colin Swain*)
(*if hd =  y, concat tail remove head)
  let prob4 l rmv = 
    match l with
    | [] -> l @ []
    | hd