%numero primo.

%uso da funcao resto da divisao "mod".

ehprimo(1):- true.
ehprimo(2):- true.
ehprimo(X):- K is X-1, funcao(X,K).
funcao(_,2).
funcao(X,K):- K > 1, Y is X mod K, Y\=0, K1 is K-1,
funcao(X, K1).
