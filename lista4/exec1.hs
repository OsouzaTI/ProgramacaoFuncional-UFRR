{--
	=
	Crie uma função sem utilizar product
	que calcule o fatorial de um número.
	=

	Definição de fatorial:
		dado um numero inteiro positivo
		n! = n * (n - 1)!
--}
fatorial :: Int -> Int
fatorial n | n < 0 = -1 -- Retorna -1 como erro a ser tratado
           | n == 0 || n == 1 = 1
           | otherwise = n * fatorial(n - 1)

main = do print $ "fatorial de 6 : " ++ show (fatorial 6)