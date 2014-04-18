-- This method gets maximum value from a given list
rmax :: (Ord a) => [a] -> a
rmax [] = error "No values"
rmax [a] = a
rmax (x:xs) = max x (rmax xs)

-- This method repeats a given number a certain number of times
rrep :: Int -> a -> [a]
rrep n x
    | n <= 0 = []
    | otherwise = x : rrep (n - 1) x

-- This method sums all values within a list
rsum :: (Num a) => [a] -> a
rsum [] = 0
rsum [a] = a
rsum (x:xs) = x + rsum(xs)

-- This method takes a given number of numbers
-- from a given list
rtake :: (Num i, Ord i) => i -> [a] -> [a]
rtake n _
    | n <= 0 = []
rtake _ [] = []
rtake n (x:xs) = x : rtake (n - 1) xs

-- This method returns a given list in inverse order
rreverse :: [a] -> [a]
rreverse [] = []
rreverse (x:xs) = rreverse xs ++ [x]

-- Repeating a number infinitely (It's helpful when
-- combining with let's say take(5, (rrpeat(3)))
rrepeat :: a -> [a]
rrepeat x = x:repeat x

-- Combine elements of two different collections
rzip :: [a] -> [b] -> [(a, b)]
rzip _ [] = []
rzip [] _ = []
rzip (x:xs) (y:ys) = (x, y):zip xs ys

relem :: (Eq a) => a -> [a] -> Bool
relem a [] = False
relem a (x:xs)
    | a == x = True
    | otherwise = a `relem` xs

