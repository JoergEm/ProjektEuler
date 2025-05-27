(**
OCaml toplevel 5.3.0
0001multiples_of_3_or_5.ml
Copyright 2025 @GitHub JoergEm
This program is WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*)

let () =
  let nummer = List.init 1000 (fun x -> x) in
  let filtered = List.filter (fun x -> x mod 3 = 0 || x mod 5 = 0) nummer in
  let summe = List.fold_left (+) 0 filtered in
  Printf.printf "%d\n" summe