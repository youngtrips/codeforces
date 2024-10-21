let ord x =
  if x >= 'a' && x <= 'z' then int_of_char x - 97 else int_of_char x - 65

let rec cmp s1 s2 i size =
  if i >= size then 0
  else if ord s1.[i] < ord s2.[i] then -1
  else if ord s1.[i] > ord s2.[i] then 1
  else cmp s1 s2 (i + 1) size

let main () =
  let s1 = read_line () in
  let s2 = read_line () in
  let size = String.length s1 in
  Printf.printf "%d\n" (cmp s1 s2 0 size)

let () = main ()
