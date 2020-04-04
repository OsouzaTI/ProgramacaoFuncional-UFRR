{--
	
	Dada uma lista de inteiros, construa uma função
	que soma todos os seus elementos.

	Não se utilize da função sum.

--}

somaLista :: [Int] -> Int
somaLista xs = last (scanl (+) 0 xs)

main = do print $ "Somando elementos de [1, 2, 3, 4, 5] : " ++ show( somaLista [1, 2, 3, 4, 5])