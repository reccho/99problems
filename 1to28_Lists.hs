-- 1.01 (*) Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "Empty list -> no end in sight."
myLast [x] = x
myLast (_:xs) = myLast xs

myLast' = head . reverse


-- 1.02 (*) Find the last but one element of a list.
butLast :: [a] -> a
butLast [] = error "Empty list -> no 2nd-to-last in sight"
butLast [x, _] = x
butLast (x:xs) = butLast xs

butLast' = last . init


-- 1.03 (*): Find the K'th element of a list. 
-- The first element in the list is number 1.
kth :: [a] -> Int -> a
kth [] _ = error "Index OoB!"
kth (x:_) 1 = x
kth (x:xs) n = kth xs (n-1)

kth' :: [a] -> Int -> a
kth' xs i = xs!!(i-1)    -- !! is 0-indexed


-- 1.04 (*) Find the number of elements of a list.

-- 1.05 (*) Reverse a list.

-- 1.06 (*) Find out whether a list is a palindrome. 
-- A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

-- 1.07 (**) Flatten a nested list structure. 
-- Transform a list, possibly holding lists as elements into a 'flat' list by replacing each list with its elements (recursively).

-- 1.08 (**) Eliminate consecutive duplicates of list elements.
-- If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

-- 1.09 (**) Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements they should be placed in separate sublists.

-- 1.10 (*) Run-length encoding of a list.
-- Use the result of problem 1.09 to implement the so-called run-length encoding data compression method. 
-- Consecutive duplicates of elements are encoded as terms [N,E] where N is the number of duplicates of the element E.

-- 1.11 (*) Modified run-length encoding.
-- Modify the result of problem 1.10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as [N,E] terms.

-- 1.12 (**) Decode a run-length encoded list.
-- Given a run-length code list generated as specified in problem 1.11. Construct its uncompressed version.

-- 1.13 (**) Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method directly. 
-- I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. 
-- As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

-- 1.14 (*) Duplicate the elements of a list.

-- 1.15 (**) Duplicate the elements of a list a given number of times.

-- 1.16 (**) Drop every N'th element from a list.

-- 1.17 (*) Split a list into two parts; the length of the first part is given.
-- Do not use any predefined functions.

-- 1.18 (**) Extract a slice from a list.
-- Given two indices, I and K, the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included). 
-- Start counting the elements with 1.

-- 1.19 (**) Rotate a list N places to the left.

-- 1.20 (*) Remove the K'th element from a list.

-- 1.21 (*) Insert an element at a given position into a list.

-- 1.22 (*) Create a list containing all integers within a given range.

-- 1.23 (**) Extract a given number of randomly selected elements from a list.

-- 1.24 (*) Lotto: Draw N different random numbers from the set 1..M.

-- 1.25 (*) Generate a random permutation of the elements of a list.

-- 1.26 (**) Generate the combinations of K distinct objects chosen from the N elements of a list
-- In how many ways can a committee of 3 be chosen from a group of 12 people?
-- We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). 
-- For pure mathematicians, this result may be great. But we want to really generate all the possibilities (via backtracking).

-- 1.27 (**) Group the elements of a set into disjoint subsets.
-- a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? 
--    Write a function that generates all the possibilities via backtracking.
-- b) Generalize the above function in a way that we can specify a list of group sizes and the function will return a list of groups.
-- Note that we do not want permutations of the group members; i.e. ((ALDO BEAT) ...) is the same solution as ((BEAT ALDO) ...). 
-- However, we make a difference between ((ALDO BEAT) (CARLA DAVID) ...) and ((CARLA DAVID) (ALDO BEAT) ...).
-- You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".

-- 1.28 (**) Sorting a list of lists according to length of sublists
-- a) We suppose that a list (InList) contains elements that are lists themselves. 
--    The objective is to sort the elements of InList according to their length. E.g. short lists first, longer lists later, or vice versa.
-- b) Again, we suppose that a list (InList) contains elements that are lists themselves. 
--    But this time the objective is to sort the elements of InList according to their length frequency; 
--    i.e. in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.
