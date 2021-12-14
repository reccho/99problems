-- P01 (*) Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "Empty list -> no end in sight."
myLast [x] = x
myLast (_:xs) = myLast xs

myLast' = head . reverse


-- P02 (*) Find the last but one element of a list.
myButLast :: [a] -> a
myButLast [] = error "Empty list -> no 2nd-to-last in sight"
myButLast [x, _] = x
myButLast (x:xs) = myButLast xs

myButLast' = last . init
