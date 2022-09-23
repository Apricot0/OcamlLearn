
type task = {
  name: string;
  priority: int;
}

let make_task name priority = {name; priority}

let t0 = make_task "📿" 0

let () = print_endline "***********"
let () = print_endline "|...$$$...|"
let () = print_endline "|---$$$---|"
let () = print_endline "|...$$$...|"
let () = print_endline "***********\n\n"

let () = print_endline "available symbols: t0, make_task"
let () = print_endline "add ;; after each expression (make_task;; || t0;; ...) "


