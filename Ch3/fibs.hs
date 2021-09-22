fibgen :: Int -> Int -> [Int]
fibgen a b = a : fibgen b (a + b)

fibs :: [Int]
fibs = fibgen 0 1
