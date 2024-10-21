let main () =
  let n = read_int () in
  let x = ref 0 in
  for i = 1 to n do
    let s = read_line () in
    let size = String.length s in
    if size == 3 then
      if s.[0] == '+' || s.[2] == '+' then x := !x + 1
      else if s.[0] == '-' || s.[2] == '-' then x := !x - 1
  done;
  Printf.printf "%d\n" !x

let () = main ()
