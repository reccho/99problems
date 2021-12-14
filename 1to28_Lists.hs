-- P01 (*): Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "Empty list -> no end in sight."
myLast [x] = x
myLast (_:xs) = myLast xs

myLast' = head . reverse
