{--
	Dada uma lista de inteiros, construa uma
	função que some todos os seus elementos.
	Utilize recursividade.

	
	Crie uma função que receba uma lista como
	entrada(parâmetro), logo contrua o corpo
	de modo que retorne a cabeça da cabeça da lista
	somada ao retorno recursivo da função passando o
	corpo da lista.

--}

somando_recursivamente :: [Int] -> Int
somando_recursivamente [] = 0
somando_recursivamente (x : xs) = x + somando_recursivamente xs

main = do print $ "Somando elementos de [1, 2, 3, 4, 5] : " ++ show(somando_recursivamente [1, 2, 3, 4, 5])