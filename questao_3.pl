%k-esimo termo de uma lista

%se for o primeiro elemento da lista, a resposta eh a cabeca
kesimo(X,1,[X|_]).
%decremento do k
kesimo(X,K,[_|Y]) :- K>1, K1 is K-1, kesimo(X,K1,Y).


