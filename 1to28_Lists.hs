-- P01 (*) Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "Empty list -> no end in sight."
myLast [x] = x
myLast (_:xs) = myLast xs

myLast' = head . reverse


-- P02 (*) Find the last but one element of a list.
butLast :: [a] -> a
butLast [] = error "Empty list -> no 2nd-to-last in sight"
butLast [x, _] = x
butLast (x:xs) = butLast xs

butLast' = last . init


-- P03 (*): Find the K'th element of a list. The first element in the list is number 1.
kth :: [a] -> Int -> a
kth [] _ = error "Index OoB!"
kth (x:_) 1 = x
kth (x:xs) n = kth xs (n-1)

kth' :: [a] -> Int -> a
kth' xs i = xs!!(i-1)    -- !! is 0-indexed
