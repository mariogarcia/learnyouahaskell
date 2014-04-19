applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

mymax :: (Ord a) => a -> a -> a
mymax a b = max a b

multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z
