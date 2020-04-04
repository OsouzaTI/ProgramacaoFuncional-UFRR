{--
	Sabendo que a sequência de Fibonacci
	é definida por Fn = Fn-1 + Fn-2, resultando
	na sequência 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89...
	Escreva uma função que devolva a sequência de Fibonacci
	até uma posição informada
--}

sequenciaDeFib :: Int -> Int
sequenciaDeFib x | (x == 1 || x == 2) = 1
                 | otherwise = sequenciaDeFib (x-1) + sequenciaDeFib (x-2)

listaDeFib :: Int -> [Int]   
listaDeFib x = map(sequenciaDeFib)[1..x]

main = do print $ "Ate a posicao 14 de Fibonacci : " ++ show(listaDeFib 14)