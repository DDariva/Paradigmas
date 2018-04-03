{-   -1-
    Usando recursão, escreva uma função geraTabela :: Int -> [(Int,Int)] que produza uma lista com n tuplas,
    cada tupla com números de n a 1 e seus respectivos quadrados. Exemplo:
-}
geraTabela :: Int -> [(Int,Int)]
geraTabela 0 = []
geraTabela n = (n,n*n):geraTabela(n-1)


{- -2-
Defina uma função recursiva que verifique se um dado caracter está contido numa string, conforme os exemplos abaixo:
-}

pString :: Char->String->Bool
pString _ [] = False
pString c (x:xs) 
  | c  == x = True 
  | otherwise = pString c xs 


{- -3-
	Defina uma função recursiva que receba uma lista de 
	coordenadas de pontos 2D e desloque esses pontos em 2 unidades, conforme o exemplo abaixo:
-}

desloc :: [(Float,Float)]->[(Float,Float)]
desloc [] = []
desloc l = (\(n1,n2) -> (n1+2,n2+2)) (head l) : desloc (tail l)

{- -4-
Defina uma função que receba um número n e retorne uma lista de n tuplas, 
cada tupla com números de 1 a n e seus respectivos quadrados. 
Dica: defina uma função auxiliar recursiva com 2 argumentos, 
sendo um deles que se mantém inalterado na chamada recursiva.
-}
geraTabela2 :: Int -> [(Int,Int)]
geraTabela2 0 = []
geraTabela2  n = geraTabela2(n-1) ++ [(n,n*n)]



