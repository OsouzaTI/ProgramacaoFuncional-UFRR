{--
	Construa de forma recursiva uma
	função que mimetize a função HEAD.
--}

_head :: [a] -> a
_head (x : xs) = x

main = do print $ " 'head' de [1, 2, 3] : " ++ show (_head [1, 2, 3])

{--
	_head xs = xs!!0

	ou

	_head1 xs = if length xs == 1 then last xs else _head1 (init xs)
--}