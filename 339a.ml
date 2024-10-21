let rec join separator = function
  | [] -> ""
  | [ str ] -> str
  | "" :: strs -> join separator strs
  | str :: strs -> str ^ separator ^ join separator strs

let cmp x y = if x < y then -1 else 1

let main () =
  let s = read_line () in
  let l = List.sort cmp (Str.split (Str.regexp "+") s) in
  Printf.printf "%s\n" (join "+" l)

let () = main ()
