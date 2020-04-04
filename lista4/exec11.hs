{--
	Construa de forma recursiva uma
	função que mimetize a função INIT.	
--}

_init :: [a] -> [a]
_init (x : xs) = if length xs == 1 then [x] else [x]++_init xs
main = do print $ " 'init' de [1, 2, 3] : " ++ show (_init [1, 2, 3])