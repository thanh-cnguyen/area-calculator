module Main

let area (shape, list) = 
    match (shape,list) with
    | ("circle", r::xs) -> (r * r) * (System.Math.PI)
    | ("rectangle", l::w::xs) -> l * w
    | ("triangle", b::h::xs) -> b * h / 2.0
    | _ -> -1.0

printf "%s" ("By Thanh Nguyen")
printf "%.2f" (area ("circle",[2.; 4.; 5.]))
printf "%.2f" (area ("rectangle",[2.; 4.; 5.]))
printf "%.2f" (area ("triangle",[2.; 4.; 5.]))
printf "%.2f" (area ("haha",[2.; 4.; 5.])) 