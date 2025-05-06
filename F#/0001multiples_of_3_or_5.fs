
(*
.NET VERSION 7.0.410
0001multiples_of_3_or_5.fs
Copyright 2025 @GitHub JoergEm
This program is WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*)

let summe =
    [1 .. 999]
    |> List.filter (fun nummer -> nummer % 3 = 0 || nummer % 5 = 0)
    |> List.sum
printfn "%d" summe
