module Chapter_06 where

-- Ex. 1
fac'' :: Int -> Int
fac'' n | n == 0 = 1
        | n > 0 = n * fac'' (n-1)
        | otherwise = 0

-- Ex. 2
sumdown :: Int -> Int
sumdown n | n > 0 = n + sumdown (n-1)
          | otherwise = 0

-- Ex. 3
-- (^) :: Int -> Int -> Int
-- m ^ 0 = 1
-- 	m ^ n = m * (m ^ (n-1))

-- Ex. 4
euclid :: Int -> Int -> Int
euclid x y | x < y = euclid x (y-x)
           | x > y = euclid (x-y) y
           | x == y = x

-- Ex. 6
-- a.
and' :: [Bool] -> Bool
and' [] = True
and' [x] = x
and' (x:xs) = x && (and' xs)

-- b.
concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ (concat' xs)

-- c.
replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n-1) x

-- d.
--(!!) :: [a] -> Int -> a
--(x:xs) !! 0 = x
--(_:xs) !! n = xs !! (n-1)

-- e.
elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y:ys) = if x == y then True else elem' x ys
