/*Roland Garros
No torneio de Roland Garros, um dos mais tradicionais torneios de tênis do mundo, realizado em
Paris, participam 128 tenistas. Em cada partida, participam dois jogadores,  sendo que o vencedor
passa  para a próxima fase, e o perdedor é eliminado do torneio. A cada rodada, os tenistas que
ainda continuam no torneio participam de exatamente uma partida.
3.
Qual o número total de partidas deste torneio?
(A) 64
(B) 65
(C) 127
(D) 128
(E) nenhuma das acima
*/
/*torneio(numero de tenistas, numero de partidas)*/
torneio(T,P):-
P is T-1.
/*esse algoritmo é funcional, pois em un torneio, deve haver uma partida para sair cada competidor, execeto o vencedor, logo n-1*/
/*
respota correta letra C.
?- torneio(128,P).
P = 127.
*/