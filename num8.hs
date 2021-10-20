module Main where

main = do
    putStrLn "By Thanh Nguyen"
    print $ area ("circle", [2, 4, 5])
    print $ area ("rectangle", [2, 4, 5])
    print $ area ("triangle", [2, 4, 5])
    print $ area ("haha", [2, 4, 5])
    
area :: ([Char], [Integer]) -> Float
area a =
    if fst a == "circle" then circ $ snd a
    else if fst a == "rectangle" then rect $ snd a
    else if fst a == "triangle" then tria $ snd a
    else -1

circ :: [Integer] -> Float
circ (r:xs) = fromIntegral r * fromIntegral r * pi

rect :: [Integer] -> Float
rect (l:w:xs) = fromIntegral l * fromIntegral w

tria :: [Integer] -> Float
tria (b:h:xs) = fromIntegral b * fromIntegral h / 2
