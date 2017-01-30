%criptograma


%gerador de numeros 0-9 com a funcao between
numero(X) :- between(0,9,X).

soma(N,O,V,E,T,R,S,D,Z):-
	%definir q eh numero
	numero(N),numero(O),numero(V),numero(E),numero(T),numero(R),numero(S),numero(D),numero(Z),
	%definicao de regra
	S=0,
	N\=O, N\=V, N\=E, N\=T, N\=R, N\=S, N\=D, N\=Z,
	O\=V, O\=E, O\=T, O\=R, O\=S, O\=D, O\=Z,
	V\=E, V\=T, V\=R, V\=S, V\=D, V\=Z,
	E\=T, E\=R, E\=S, E\=D, E\=Z,
	T\=R, T\=S, T\=D, T\=Z,
	R\=S, R\=D, R\=Z,
	S\=D, S\=Z,
	D\=Z,
	%equacoes da soma
	E+S=:=E, V+E=:=10+Z, 1+O+R=:=10+O, 1+N+T=:=D.












