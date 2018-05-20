/* Uma empresa desenvolvedora de jogos precisa escolher trˆes times de colaboradores para trabalhar nos
projetos C, D e F. Cada time ir´a trabalhar em exatamente um desses trˆes projetos. Cada time deve
incluir ao menos um programador entre L e M e exatamente dois artistas gr´aficos entre R, S, T e
V. Cada programador e artista gr´afico deve estar em ao menos um time, de acordo com as seguintes
condi¸c˜oes:
• Nenhum programador pode trabalhar em ambos os projetos C e D.
• Nenhum artista gr´afico pode trabalhar em ambos os projetos D e F.
• S n˜ao est´a em um time junto com T.
• V est´a em um time junto com L.
• V trabalha no projeto D.
• S trabalha no projeto C. */

regra1(A, B, X):-
    member(X, A),
    not(member(X, B)).
regra1(A, B, X):-
    member(X, B),
    not(member(X, A)).

baseregra2(A, X, Y):-
    member(X, A),
    not(member(Y, A)).

regra2(C, D, F):-
    baseregra2(C, 's', 't');
    baseregra2(D, 's', 't');
    baseregra2(F, 's', 't').

baseregra3(A, X, Y):-
    member(X, A),
    member(Y, A).

regra3(C, D, F):-
    baseregra3(C, 'v', 'l');
    baseregra3(D, 'v', 'l');
    baseregra3(F, 'v', 'l').

times(C, D, F):-
    regra1(C, D, 'l'),
    regra1(C, D, 'm'),
    regra1(D, F, 'r'),
    regra1(D, F, 's'),
    regra1(D, F, 't'),
    regra1(D, F, 'v'),
    regra2(C, D, F),
    regra3(C, D, F),
    member('v', D),
    member('s', C).

/*Qual das seguintes alternativas ´e
uma lista completa e correta dos times associados
aos projetos?
(A) C: M, V, S D: L, V, R F: M, T, R
(B) C: M, V, R D: L, V, R F: M, S, T
(C) C: L, V, R D: L, S, R F: M, T, V
(D) C: L, V, S D: M, V, S F: L, T, R  CORRETA 
(E) C: L, S, R D: M, V, T F: M, S, R */
