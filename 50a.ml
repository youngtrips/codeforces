let main () =
  let m, n = Scanf.scanf "%d %d" (fun x y -> (x, y)) in
  Printf.printf "%d\n" (m * n / 2)

let () = main ()
