{--

 	Dado duas listas ordenadas,
 	verifique se o último elemento
 	da primeira é menor ou igual ao
 	primeiro elemento da segunda.

	Observações dos dados:
		* basicamente o mesmo do exec1.hs

--}

verifica :: [[Int]] -> Bool
--Mostre :: [Bool] -> [String]

verifica xss = last (head xss) <= last (reverse (head (reverse xss)))

{--
	Dada a lista [ [1, 3, 4], [5, 3, 2] ]
	
	1- parte
	>> A função 'verifica' pega o primeiro elemento
		da primeira lista ou seja (head xss) e logo 
		depois executa a função 'last' pegando o ultimo 
		indice da lista passada como parâmetro.
		-> last [1, 3, 4]
		-> 4

	2- parte
	>> A segunda parte logo apos a condicional
		reverte a lista dada como parâmetro da função
		assim sendo
			-> reverse [ [1, 3, 4], [5, 3, 2] ]
			-> [ [5, 3, 2] , [1, 3, 4] ] 
		Apos o retorno da função executamos o 'head'
		que retonará o primeiro indice da lista, aplicando
		novamente o reverse temos:
			-> reverse [5, 3, 2]
			-> [2, 3, 5]
		agora simplesmente pegamos o ultimo elemento da lista 
		com a função 'last'.
		-> last [2, 3, 5]
		-> 5

		Agora o algoritmo aplica a condiciaonal de fato: ...4 <= 5...
		-> True
		
--}