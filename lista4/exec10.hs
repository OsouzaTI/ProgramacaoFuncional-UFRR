{--
	Construa de forma recursiva uma
	função que mimetize a função LAST.
--}
_last :: [a] -> a
_last (x : xs) = if length xs == 0 then x else _last xs
main = do print $ " 'last' de [1, 2, 3] : " ++ show (_last [1, 2, 3])