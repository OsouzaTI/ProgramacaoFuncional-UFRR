{--
	
	Construa uma função que realize
	a inversão de uma lista.

	Não utilize o reverse.

--}
rev :: [a] -> [a]
rev (x : xs) = if length xs == 0 then [x] else rev xs ++[x]

main = do print $ "revertendo [1, 2, 3, 4] : " ++ show (rev [1, 2, 3, 4])