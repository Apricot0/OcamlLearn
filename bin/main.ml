(*Q1*)
let rec pow x n = 
  if n = 0 then 1
  else x*pow x (n-1);;

let rec float_pow x n = 
  if n = 0 then 1.0
  else x *. float_pow x (n-1);;

(*Q2*)
let rec compress list = match list with
  | [] -> []
  | a::[] -> [a]
  | x::y::t -> 
      if x = y then compress (x::t) 
      else x::compress (y::t);;
(*Q3*)
let rec remove_if list condition = match list with
  | [] -> []
  | a::t -> 
      if condition a then remove_if t condition 
      else a:: remove_if t condition;;
(*Q4*)
let rec slice list i j = match list with
  | [] -> []
  | a::t -> 
      if (i <= 0) && (j > 0) then a::slice t (i-1) (j-1) 
      else slice t (i-1) (j-1);;

(*Q5*)
let rec dividList compare list = match list with
  | [] -> []
  | a::t -> 
      if (compare a) then a::dividList compare t
      else dividList compare t;;
let rec getList2 list1 list2 = match list1 with
  | [] -> list2
  | a::t-> getList2 t (remove_if list2 ((=)a));;
let rec equivs compare list = match list with
  | [] -> [[]]
  | a::t -> 
      let list1 = dividList (compare a) list in let list2 = getList2 list1 t in match list2 with
      |[]->[list1]
      |a::t -> list1 :: (equivs compare list2);;

(*Q6*) 
let isPrime n = 
  let rec aux n a = 
    if a = 1 || n = 1 then true 
    else (if n mod a = 0 then false else aux n (a-1))
  in aux n (n-1);;
let check m n = 
  if isPrime m && isPrime n then true else false;;
let goldbachpair n = 
  let rec aux n counter = 
    if counter < (n-counter)  then failwith " Goldbach wong!! " 
    else if check counter (n-counter) then (n-counter, counter) 
    else aux n (counter-1)
  in aux n (n-1);;

(*Q7*)
let equiv_on f g lst = 
  let rec aux f g lst = match lst with
    |[] -> true
    |a::t -> 
        if (f a) <> (g a) then false 
        else aux f g t 
  in aux f g lst;;

(*Q8*)
let rec pairwisefilter cmp lst = match lst with
  |[] -> []
  |[a] -> [a]
  |a::b::t  -> (cmp a b) :: pairwisefilter cmp t;;

  
(*Q9*)
let rec polynomial list = match list with
  | [] -> fun x -> 0
  | (a,b)::t -> fun x -> (a*(pow x b) + (polynomial t) x);;


(*Q10*) 
let rec listAdd list1 list2 = match list1 with
  | [] -> list2
  | a::t -> a::listAdd t list2;;
    
let rec append a list = match list with
  | [] -> []
  | h::t -> (a::h) :: (append a t);;

let rec powerset list = match list with
  | [] -> [[]]
  | a::t ->
      listAdd (powerset t) (append a (powerset t));;
