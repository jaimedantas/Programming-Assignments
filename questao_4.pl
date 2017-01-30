%Determinar se a lista eh polindromo

% utilizando a funcao reverse para inverter a lista X e comparar com ela
% normal, se forem iguais, eh palindromo.


palindromo(X) :- reverse(X,X).
