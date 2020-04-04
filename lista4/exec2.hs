{--
	A potenciação é o resultado de multiplicações
	sucessivas: 2^4 = 2 * 2 * 2 * 2 = 16.
	
	Construa uma função que realize o cálculo do valor,
	sendo informados a base e o expoente.
--}

-- Função da linguagem (**)
potencia :: Float -> Float -> Float
potencia x y = x**y

-- Funçao somente para inteiros positivos
powRecursiva :: Float -> Float -> Float
powRecursiva x y | y == 0 = 1
                 | y == 1 = x
                 | otherwise = x * powRecursiva x (y-1)

main = do
         putStr "base : "
         b <- readLn
         putStr "expoente : "
         e <- readLn
         if e < 0 then print $ potencia b e
         else print $ powRecursiva b e
