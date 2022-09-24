# Q1
let rec pow x n = 
 if n = 0 then 1
 else x*pow x (n-1);;

let rec float_pow x n = 
 if n = 0 then 1.0
 else x *. float_pow x (n-1);;

# Q2
let rec compress list = match list with
  | [] -> []
  | a::[] -> [a]
  | x::y::t -> 
      if x = y then compress (x::t) 
      else x::compress (y::t);;
#Q3


