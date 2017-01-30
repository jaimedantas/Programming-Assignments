%Ultimo elemento de uma lista

% Separa cabeca e calda ate chegar ao ultimo elemento da calda, que sera
% a resposta


ultimo(X, [X]).
ultimo(X, [_|Y]) :- ultimo(X, Y).

