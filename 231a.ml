let input () = Scanf.scanf "%d %d %d\n" (fun x y z -> (x, y, z))

let rec solve n total =
  match n with
  | 0 -> total
  | _ ->
      let x, y, z = input () in
      if x + y + z >= 2 then solve (n - 1) (total + 1) else solve (n - 1) total

let main () =
  let n = read_int () in
  Printf.printf "%d\n" (solve n 0)

let () = main ()
