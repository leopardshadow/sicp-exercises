ints :: Int -> [Int]
ints n = n : ints (n + 1)
