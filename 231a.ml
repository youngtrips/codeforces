let main () =
  let n = read_int () in
  let m = ref 0 in
  for i = 1 to n do
    let x, y, z = Scanf.scanf "%d %d %d\n" (fun x y z -> (x, y, z)) in
    if x + y + z >= 2 then m := !m + 1
  done;
  Printf.printf "%d\n" !m

let () = main ()
