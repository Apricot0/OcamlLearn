
type task = {
  name: string;
  priority: int;
}

let make_task name priority = {name; priority}

let t1 = make_task "clear tickets" 0

let () = print_endline "***********"
let () = print_endline "|...$$$...|"
let () = print_endline "|---$$$---|"
let () = print_endline "|...$$$...|"
let () = print_endline "***********"

