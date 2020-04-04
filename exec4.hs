{--
	
	Dado uma lista qualquer, verifique as ocorrências de
	um elemento x e retorne suas posições.

--}

indexando  :: [Int] -> [(Int, Int)]
indexando xs = [i | i<- zip xs [0..length xs]]

ocorrencia :: [Int] -> Int -> [Int]
ocorrencia xs n = [j | (i, j) <- indexando xs, i == n]

-- Essa foi boa

{--
	
	Explicação dividida em por funções
		* indexando

			Recebe como parâmetro uma lista de inteiros
			e utiliza a função 'zip' onde cria uma lista
			de tuplas ultilizando a lista da entrada como primeiro
			elemento da tupla e a lista gerada por [0.. length xs]
			como segundo elemento.

			é retornada a lista de tuplas.

		* ocorrencia

			Recebe como entrada uma lista de inteiros e uma constante
			do tipo int que serve como elemento base da busca, é retornada
			uma lista de inteiros configurada por:
			[j para todo (i, j) onde i é igual a n].

			obs(n é a constante mencionada)


--}