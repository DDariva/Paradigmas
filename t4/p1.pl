/*
1-S ocupa a quarta faixa do CD.

2-Tanto W como Y precedem S no CD (ou seja, W e Y est ̃ao numa faixa que  ́e tocada antes de S
no CD).

3-T precede W no CD (ou seja, T est ́a numa faixa que  ́e tocada antes de W).

4-Um sucesso de rock ocupa a sexta faixa do CD.

5-Cada sucesso de rock  ́e imediatamente precedido no CD por uma composi ̧c ̃ao da banda (ou seja,
no CD cada sucesso de rock toca imediatamente ap ́os uma composi ̧c ̃ao da banda).

6-Z e um sucesso de rock
*/
suc(z).
com(_).

regra1(CD):-
	CD= [_,_,_,s,_,_,_].

regra2(CD):-
	nth0(PW,CD,w),
	nth0(PY,CD,y),
	nth0(PS,CD,s),	
	PY<PS,
	PW<PS.

regra3(CD):-
	nth0(PT,CD,t),
	nth0(PW,CD,w),
	PW-PT=:=1.

regra4(CD):-
	CD= [_,_,_,_,_,X,_], suc(X).

regra5(CD):-
	com(X), suc(Y), nextto(X,Y,CD).

regra6(I):-
	suc(I).

teste(CD) :-
regra1(CD),
regra2(CD),
regra3(CD),
regra4(CD),
regra5(CD),
nth0(5, CD, X),
regra6(X).

/*
Olimp ́ıada Brasileira de Inform ́atica – OBI2017 – Inicia ̧c ̃ao N ́ıvel 2 – Fase 1
4
CD Independente
Uma banda formada por alunos e alunas da escola est ́a gravando um CD com exatamente sete m ́usicas
distintas – S, T, V, W, X, Y e Z. Cada m ́usica ocupa exatamente uma das sete faixas contidas no
CD. Algumas das m ́usicas s ̃ao sucessos antigos de rock; outras s ̃ao composi ̧c ̃oes da pr ́opria banda.  As
seguintes restri ̧c ̃oes devem ser obedecidas:
•
S ocupa a quarta faixa do CD.
•
Tanto W como Y precedem S no CD (ou seja, W e Y est ̃ao numa faixa que  ́e tocada antes de S
no CD).
•
T precede W no CD (ou seja, T est ́a numa faixa que  ́e tocada antes de W).
•
Um sucesso de rock ocupa a sexta faixa do CD.
•
Cada sucesso de rock  ́e imediatamente precedido no CD por uma composi ̧c ̃ao da banda (ou seja,
no CD cada sucesso de rock toca imediatamente ap ́os uma composi ̧c ̃ao da banda).
•
Z  ́e um sucesso de rock.
Quest ̃ao 11.
Qual das seguintes alternativas po-
deria ser a ordem das m ́usicas no CD, da primeira
para a s ́etima faixa?
(A)    	T, W, V, S, Y, X, Z
(B)		V, Y, T, S, W, Z, X
(C)		X, Y, W, S, T, Z, S
(D)    	Y, T, W, S, X, Z, V
(E)		Z, T, X, W, V, Y, S


D é a resposta correta.
?- teste([y,t,w,s,x,z,v]).
true .


*/