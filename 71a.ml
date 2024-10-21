let solve s =
  let size = String.length s in
  if size <= 10 then Printf.printf "%s\n" s
  else Printf.printf "%c%d%c\n" s.[0] (size - 2) s.[size - 1]

let main () =
  let n = read_int () in
  for i = 1 to n do
    let s = read_line () in
    solve s
  done

let () = main ()
