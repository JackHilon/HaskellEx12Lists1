

import Data.List


main = do 
    -- creat a list 
    let ns = 1 : 22 : 333 : 4444 : 7 : []
    print ns

    -- concate two lists
    let ms = [1, 2 , 6] ++ [45, 975, 7328]
    print ms

    -- append an element in front of the list
    let os = 999999 : ns 
    print os

    -- is the list empty?
    let emptyFlag = null os
    print emptyFlag

    -- return the list except the last element
    let ps = init os 
    print ps

    -- first n elements from the list
    let qs = take 2 ps
    print qs

    -- drop (remove) first n elements from the list
    let rs = drop 3 ps
    print rs

    -- check an element in the list
    let ss = ["a", "b", "c", "d"]
    let s = "b"
    let t = "t"
    print(s `elem` ss)
    print(t `elem` ss)

    -- max/min value in the list
    let max1 = maximum ss
    let min1 = minimum ss
    print(max1)
    print(min1)

    -- sum/product all the elements of the list (a numeric list only)
    let ts = [2, 5, 7, 9]
    print(sum ts)
    print(product ts)

    -- create a list of successive numbers, or an even/odd numbers
    let us = [0..10]
    let odds = [1,3..10]
    let evens = [2,4..10]

    print(us)
    print(odds)
    print(evens)

    -- create a successive char list
    let chars1 = ['A'..'Z']
    let chars2 = ['A','C'..'Z']
    print(chars1)
    print(chars2)

    -- generate an infinite numeric list
    let ins1 = [10,20..]
    let ins2 = take 5 ins1      -- take only the first 5 elements of the infinite list ins1
    print(ins2)

    -- generate a list consists of same element multiple times
    let xs = take 10 (repeat 2)     -- (2) is the element / (10) length of the list
    print(xs)

    -- another way
    let ys = replicate 3 11     -- (3) is the lenght of the list / (11) is the element
    print(ys)


    -- cycle list: repeat sublist
    let zs = take 10 (cycle [1, 11, 111])   -- (10) is the length of the list
    print(zs)

    -- multiply all the elements in the list with the same number
    let as = [3 * x | x <- [1..20]]
    print(as)
    -- add another condition (take the elemnts less than 35)
    let bs = [4 * x | x <- [1..20], (4 * x) < 35]
    print(bs)

    -- create a numeric list with some conditions
    -- list of numbers (0 -> 100) divisable by (2) and (3)
    let cs = [x | x <- [1..100] , x `mod` 2 == 0, x `mod` 3 == 0] 
    print(cs)

    -- sort list (must import Data.List)
    putStrLn("Sort list")
    let ds = [99, 22, 44, 11, 113, 33, 55, 0, 77, 88, 4, 2, 7, 1]
    let es = sort [99, 22, 44, 11, 113, 33, 55, 0, 77, 88, 4, 2, 7, 1]
    print(es)


    -- sum two lists (droping extra elements)
    putStrLn("Sum two lists")
    let fs = zipWith (+) [1, 2 , 1, 2, 1, 2] [3, 1, 2, 3, 1, 2]
    print(fs)
    let gs = zipWith (+) [1, 2 , 1, 2, 1, 2] [3, 1, 2, 3, 1, 2, 9]
    print(gs)

    -- filter on lists
    putStrLn("Filter on lists")
    let hs = [5, 1, 3, 8, 9, 6, 2, 0]
    let iss = filter (<5) hs
    print(iss)

    -- use "takeWhile" on lists 
    putStrLn("Using takeWhile (1)")
    let jss = takeWhile (<=20) [0..100]
    print(jss)

    -- using takeWhile on lists
    putStrLn("Using takeWhile (2)")
    let hss = takeWhile (>50) [0..60]
    print(hss)

    -- using takeWhile on lists
    putStrLn("Using takeWhile (3)")
    let jss = takeWhile (>50) [67, 1, 2, 3, 55, 67, 87, 79, 78]
    print(jss)

    -- using takeWhile on lists
    putStrLn("Using takeWhile (4)")
    let jss = takeWhile (<=10) [0..]
    print(jss)

    -- using foldl / foldr -- operation begin from left / right
    putStrLn("Using foldl / foldr (1)")
    let ks = [3, 5, 7]
    let number1 = foldl (*) 2 ks -- 2 * (3 * 5 * 7)
    print(number1)

    -- using foldl / foldr -- operation begin from left / right
    putStrLn("Using foldl / foldr (2)")
    let ks = [3, 5, 7]
    let number1 = foldr (+) 2 ks -- (3 + 5 + 7) + 2
    print(number1)

    -- using foldl / foldr -- operation begin from left / right
    putStrLn("Using foldl / foldr (3)")
    let ks = [3, 5, 7]
    let number1 = foldl (-) 2 ks -- [{(2 - 3) - 5} - 7] = - 13 
    print(number1)

    -- using foldl / foldr -- operation begin from left / right
    -- you can use scanl / scanr for demonstration
    putStrLn("Using foldl / foldr (4)")
    let ks = [3, 5, 7]
    let number1 = foldr (-) 2 ks -- [7 - (5 - {3 - 2})] = 3
    print(number1)

    
    




    