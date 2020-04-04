{--
	Construa de forma recursiva uma
	função que mimetize a função TAIL.	
--}
_tail :: [a] -> [a]
_tail (x : xs) = xs
main = do print $ " 'tail' de [1, 2, 3] : " ++ show (_tail [1, 2, 3])
{--
	Do mesmo modo que a imitação da head
	existem outras formas de obter esse
	resultado.
--}