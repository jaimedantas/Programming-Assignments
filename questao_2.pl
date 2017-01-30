%Penultimo elemento de uma lista

%Separa cabeca e calda ate chegar na ultima cabeca, que sera a resposta

penultimo(X, [X,_]).
penultimo(X, [_|Y]) :- penultimo(X,Y).

