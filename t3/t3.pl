/* Exercicio 1 */
zeroInit([H|_]):- H==0.

/* Exercicio 2 */
has5([]).
has5([_,_,_,_,_]).

/* Exercicio 3 */
hasN(L,N):- length(L,N).

/* Exercicio 4 */
potN0(N, L):-
     (N  >= 0->
     H is 2^N,
     I is N-1,
     L = .(H , T ),
     potN0(I, T);
     T =[]).

/* Exercicio 5 */
zipmult([],[],[]).
zipmult([H1|T1],[H2|T2],L3):-
H3 is H2*H1,
L3 = [H3|T3],
zipmult(T1,T2,T3).

/* Exercicio 6 */
potencias([],[]).
potencias(N,L):-
    (N  >= 0->
    H is 2^N,
    I is N-1,
    F = .(H , T ),
    potN0(I, T);
    T =[]),
    reverse(F,L).


/* Exercicio 7 */

positivos([], []).
positivos(L1, L2) :-
  L1 = [H1|T1],
  H1 > 0,
  positivos(T1, R),
  L2 = [H1|R].

positivos(L1, L2) :-
  L1 = [H1|T1],
  H1 < 0,
  positivos(T1, R),
  L2 = R.

/* Exercicio 8 */
mesmaPosicao(A,L1,L2) :-
  nth0(X1, L1, A),
  nth0(X2, L2, A),
  X1 = X2.

/* Exercicio 9 */



/* Exercicio 10 */


