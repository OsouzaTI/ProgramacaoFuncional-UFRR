{--

	Crie uma função que adiciona um elemento
	no final da lista dada como parâmetro.

--}

addFinal :: [a] -> a -> [a]
addFinal xs x = xs ++ [x]

main = do print $ "Adicionando 3 no final da lista [1, 2] : " ++ show (addFinal [1, 2] 3)