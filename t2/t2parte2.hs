{- 1
Escreva uma função recursiva isBin :: String -> Bool para verificar se uma dada String 
representa um número binário, ou seja, contém apenas caracteres '0' ou '1'. As únicas 
funções pré-definidas autorizadas aqui são head e tail
-}
isBin :: String -> Bool
isBin s 
  | s == [] = False
  | otherwise = isBinAux(s)

isBinAux :: String -> Bool
isBinAux s
  | s == [] = True
  | head s == '0' = isBinAux(tail s)
  | head s == '1' = isBinAux(tail s)
  | otherwise = False


{- 2
Reescreva a função acima de forma não-recursiva. 
Dê outro nome para ela, por exemplo isBin'. 
Aqui você pode usar quaisquer funções auxiliares pré-definidas em Haskell.
-}
isBin2 :: String -> Bool
isBin2 x
  | x == [] = False
  | otherwise = not(length(filter (\n -> notElem n "01" )x)>0) 


{- 3
Encontra-se abaixo a definição parcial da função bin2dec :: [Int] -> Int, 
que converte uma lista de 0's e 1's (representando um número binário), em seu equivalente em decimal.
bin2dec :: [Int] -> Int
bin2dec [] = undefined
bin2dec bits = auxBin2Dec bits ((length bits)-1)

Observe que:

    Usou-se undefined para o caso em que a função não tem resultado definido.
    Usou-se uma função auxiliar (auxBin2Dec) que recebe, como segundo argumento, o expoente
    que deverá multiplicar o primeiro elemento da lista.

Implemente a função auxBin2Dec de forma recursiva, para que bin2dec funcione corretamente, conforme os exemplos abaixo:
-}
bin2dec :: [Int] -> Int
bin2dec [] = undefined
bin2dec bits = auxBin2Dec bits ((length bits)-1)

auxBin2Dec :: [Int] -> Int -> Int
auxBin2Dec [] x = 0
auxBin2Dec (x:xs) e = (x*2^e)+ auxBin2Dec xs (e-1) 



{- 4
Reescreva a função do exercício anterior de forma não-recursiva, usando 
funções pré-definidas em Haskell. Dê outro nome para a função (por exemplo, bin2dec').
-}



{- 5
Crie uma função recursiva dec2bin :: Int -> [Int] que receba um número inteiro 
positivo e retorne sua representação em binário, sob forma de uma lista de 0's e 1's. 
As funções auxiliares autorizadas aqui são mod, div e reverse.
-}
dec2bin :: Int -> [Int]
dec2bin 0 = [0]
dec2bin x = reverse (dec2BinAux x)


dec2BinAux :: Int -> [Int]
dec2BinAux 1 = [1]
dec2BinAux 0 = []
dec2BinAux n = mod n 2 : dec2BinAux (div n 2)


{- 6
Implemente uma dessas funções: isHex :: String -> Bool ou hex2dec :: String -> Int ou 
dec2hex :: Int -> String, que são semelhantes às dos exercícios anteriores, porém 
com números hexadecimais no lugar de números binários. Aqui está tudo liberado: você 
pode escolher qual das funções irá implementar, sem restrições sobre como deve fazer isso.
-}
isHex :: String -> Bool
isHex x
  | x == [] = False
  | otherwise = not(length(filter (\n -> notElem n "0123456789abcdefABCDEF" )x)>0) 