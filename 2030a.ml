let min a b = if a < b then a else b
let max a b = if a > b then a else b

let input i =
  if i == 1 then Scanf.scanf "%d" (fun x -> x)
  else Scanf.scanf " %d" (fun x -> x)

let solve () =
  let n = Scanf.scanf "%d\n" (fun x -> x) in
  let x = ref 10000 in
  let y = ref (-1) in
  for i = 1 to n do
    let a = input i in
    x := min !x a;
    y := max !y a
  done;
  let ans = (!y - !x) * (n - 1) in
  Printf.printf "%d\n" ans;
  Scanf.scanf "\n" ()

let main () =
  let t = Scanf.scanf "%d\n" (fun x -> x) in
  for i = 1 to t do
    solve ()
  done

let () = main ()
