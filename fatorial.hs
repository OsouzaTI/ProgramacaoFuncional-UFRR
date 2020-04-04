f n | (n == 0 || n == 1) = 1
    | (n < 0) = -1
    | otherwise = f(n - 1) * n