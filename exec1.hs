{--
	
	Dados duas listas ordenadas, indique
	se esta está em ordem descrescente ou crescente.
	
	Observação dos dados:
		* Lista ordenada ou seja em sequência
			-> [1, 2, 3...] ou [6, 4, 2]

		* Sendo em sequência basta verificar 2 termos
		  dessa sequencia, o A       e o A       sendo o 0 =< x < t 
		  					  x           m        e x < m <= x + ((t - x)-1) e != 0

		  onde t é o tamanho da lista.

		  para x = 5, numa lista de t = 10.
			-> m = 6..9
		  para x = 1, ...
		  	-> m = 2..9 


		No algoritmo usei x = 3, sendo assim m = 4..9

			

--}
creDec :: [Int] -> String
creDec xs | head xs < last xs = "Crescente"
          | otherwise = "Decrescente"
          
g :: [[Int]] -> [String]
g xss = map(creDec) xss


