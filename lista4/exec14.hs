{--
	Escreva uma função que devolva todos os números
	existentes entre dois números inteiros,
	por exemplo, passando 2 e 7 o retorno seria [3,4,5,6].
--}
intervaloEntreNumeros :: Int -> Int -> [Int]
intervaloEntreNumeros x y = [x+1..y-1]

main = do print $ "Intervalo de numeros entre 5 e 10 : " ++ show(intervaloEntreNumeros 5 10)