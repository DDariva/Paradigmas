-- 1 - Crie uma função isVowel :: Char -> Bool que verifique se um caracter é uma vogal ou não.
isVowel :: Char->Bool
isVowel x = (elem x "aeiou")

-- 2 - Escreva uma função addComma, que adicione uma vírgula no final de cada string contida numa lista.
addComma :: [String]->[String]
addComma x = map (++";") x


-- 3 - Crie uma função htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML. Resolva este exercício COM e SEM funções anônimas (lambda). Exemplo de uso da função:
htmlListItemsLamb :: [String] -> [String]
htmlListItemsLamb x = map (\n -> "<LI>"++ n ++"</LI>") x

htmlAux :: String -> String
htmlAux x = "<LI>"++ x ++"</LI>"

htmlListItems :: [String] -> [String]
htmlListItems x = map htmlAux x

-- 4 - Defina uma função que receba uma string e produza outra retirando as vogais, conforme os exemplos abaixo. Resolva este exercício COM e SEM funções anônimas (lambda).

semVogaisLamb :: String -> String
semVogaisLamb x = filter (\n ->  not (elem n "aeiou")) x

semVogais :: String -> String
semVogais x = filter semVogaisAux x

semVogaisAux :: Char -> Bool
semVogaisAux x = not (elem x "aeiou")


-- 5 - Defina uma função que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços. Resolva este exercício COM e SEM funções anônimas (lambda). Exemplos:
codLamb :: String -> String
codLamb x = map (\n -> if n==' ' then ' ' else '-') x


-- 6 - Escreva uma função firstName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu primeiro nome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome. Dica: estude funções pré-definidas em Haskell (List operations -> Sublists) em http://hackage.haskell.org/package/base-4.10.1.0/docs/Prelude.html#g:18. Exemplos de uso da função:
firstName :: String -> String
firstName x = takeWhile (/=' ') x

-- 7 - Escreva uma função isInt :: String -> Bool que verifique se uma dada string só contém dígitos de 0 a 9. Exemplos:
isInt :: String -> Bool
isInt x = if (length(filter (\n -> notElem n "0123456789" )x)>0) then False else True

-- 8 - Escreva uma função lastName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu último sobrenome. Suponha que cada parte do nome seja separada por um espaço e que não existam espaços no início ou fim do nome. Exemplos de uso da função:
lastName :: String -> String
lastName x = last (words x)

vetNames :: String -> [String]
vetNames x = words x







