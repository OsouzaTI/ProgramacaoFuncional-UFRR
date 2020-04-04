{--
	Escreva uma função recursiva que
	determine quantas vezes um dígito
	K ocorre em um número natural N.

	Por exemplo, o dígito 2 ocorre 3 vezes em 762021192.
--}
inteiroLista :: Int -> [Int]
inteiroLista 0 = []
inteiroLista x = inteiroLista ((div) x 10) ++ [(mod) x 10]

contaDigitos :: Int -> Int -> Int
contaDigitos x y = length (filter (==y) (inteiroLista x))

main = do print $ "Ocorrencias do digite 2 em 20240 : " ++ show (contaDigitos 20240 2)