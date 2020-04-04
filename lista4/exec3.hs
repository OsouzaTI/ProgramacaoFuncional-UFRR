{--
	Realize a concatenação dos elementos
	de uma lista de listas.
--}
len :: [a] -> Int
len [] = 0
len (x : xs) = 1 + len xs -- existe a 'lenght'
concatenar :: [[a]] -> [a]
concatenar (x : xs) = if len xs > 0 then
                        x ++ concatenar xs
                      else x

main = do print $ "Concatenando [1, 2, 3, 4] e [5, 6] : " ++ show (concatenar [[1, 2, 3, 4], [5, 6]])       
