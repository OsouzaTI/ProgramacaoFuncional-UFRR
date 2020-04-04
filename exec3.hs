{--
	Dado uma lista qualquer, realize uma busca
	por um elemento x e retorne True caso ache
	o elemento desejado	ou False em caso contrário.

	Observações
		* Assumo que x é do tipo inteiro.

--}

ache :: [Int] -> Int -> Bool
ache (x : xs) n | (x == n) = True
                | length xs == 0 = False
                | otherwise = ache xs n

{--
	A função pega a lista de inteiros passada como
	parâmetro e separa a cabeça da lista do corpo,
	assim sendo verificando primeiramente se (x == n)
	retornando se este for verdadeiro, se não e feita uma
	verificação sobre a lista retornando o tamanho dela e verificando
	se é vazia(0 elementos), caso nenhuma das opções seja satisfeita
	simplesmente e chamada recursivamente a função 'ache' passando como
	parâmetro o corpo da lista e o valor de n.
--}



