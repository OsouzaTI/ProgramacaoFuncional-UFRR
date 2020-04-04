{--
	Escreva uma função que verifica se
	uma palavra é um palíndromo. Ex. ovo, natan
--}
verificaPalavra :: String -> Bool
verificaPalavra x = if x == reverse x then True else False

main = do print $ "Entrada -> ana, palindromo : " ++ show(verificaPalavra "ana")