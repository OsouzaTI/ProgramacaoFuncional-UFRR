{--
	Escreva uma função que transforme duas
	listas ordenadas em uma única lista ordenada.	
--}

juntaListas :: [Int] -> [Int] -> [Int]
juntaListas xs ys = xs ++ ys
-- Algoritmo QuickSort
{--
	Separa a lista usando o primeiro elemento como
	pivô, apos isso duas sublistas serão criadas a 
	cada recursão para posteriormente serem concatenadas
--}
ordenaLista :: [Int] -> [Int]
ordenaLista [] = []
ordenaLista (x : xs) = ordenaLista menor ++ [x] ++ maior
                            where menor = [k | k <- xs, k <= x]
                                  maior = [k | k <- xs, k >  x]

-- Algoritmo Selection Sort
{--
	Procura pelo menor elemento da lista
	e o remove apos adicionar a uma lista,
	refazendo o processo por recursão até
	eventualmente a lista esvaziar
--}
deletaIndice :: Int -> [Int] -> [Int]
deletaIndice x (y : ys) | length ys == 0 = []
                        | x == y = ys
                        | otherwise = [y] ++deletaIndice x ys

ordSelection :: [Int] -> [Int]
ordSelection [] = []
ordSelection xs = [x] ++ ordSelection (deletaIndice x xs)
                     where x = minimum xs --minimum função do haskell 

main = do
         print $ "Cancatenando e ordenando -> [3, 2, 4, 5], [7, 5, 3] : "
               ++ show (ordSelection (juntaListas [3, 2, 4, 5] [7, 5, 3]))