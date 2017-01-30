%sudoku 9x9 (divididos em 9 de 3x3)
% OBS: Eu fiz pra um sudoku de 3x3 e deu certo, entretando para o sudoku
% da questao 9x9 so ficava processando a resposta, mas acho
% que deve funcionar

%tamanho do sudoku
valor(1).
valor(2).
valor(3).
valor(4).
valor(5).
valor(6).
valor(7).
valor(8).
valor(9).

member(X,[X|_]) :- !.
member(X,Y) :- Y = [_|Z],member(X,Z).

diferente([X,Y]):- X\=Y.
diferente([X|Y]):- not(member(X,Y)), diferente(Y).

%definicao do sudoku, cada bloco de quadrado 3x3 foi convertido em uma
%matriz
sudoku(MATRIZ3X3) :- MATRIZ3X3 =
%criacao da de cada matrix 3x3
[A1, A2, 5, 8, A5, A6, A7, 7, A9],
%[3, B2, B3, B4, B5, B6, B7, 1, B9],
%[C1, C2, C3, C4, 2, C6, 5, C8, C9],
%[4, D2, D3, D4, 1, D6, D7, D8, 3],
%[E1, E2, 5, E4, 7, E6, 2, E8, E9],
%[3, F2, F3, F4, F5, 6, F7, 8, F9],
%[G1, 6, G3, G4, G5, 4, G7, G8, G9],
%[5, H2, H3, H4, H5, H6, H7, H8, 9],
%[I1, I2, 9, I4, 3, I6, 7, I8, I9],
%set de valores nos Aij
valor(A1), valor(A2), valor(A5), valor(A6), valor(A7), valor(A9),
valor(B2), valor(B3), valor(B4), valor(B5), valor(B6), valor(B7), valor(B9),
valor(C1), valor(C2), valor(C3), valor(C4), valor(C6), valor(C8), valor(C9),
valor(D2), valor(D3), valor(D4), valor(D6), valor(D7), valor(D8),
valor(E1), valor(E2), valor(E4), valor(E6), valor(E8), valor(E9),
valor(F2), valor(F3), valor(F4), valor(F5), valor(F7), valor(F9),
valor(G1), valor(G3), valor(G4), valor(G5), valor(G7), valor(G8), valor(G9),
valor(H2), valor(H3), valor(H4), valor(H5), valor(H6), valor(H7), valor(H8),
valor(I1), valor(I2), valor(I4), valor(I6), valor(I8), valor(I9),
%regras
diferente([A1, A2, 5, 8, A5, A6, A7, 7, A9]),
diferente([3, B2, B3, B4, B5, B6, B7, 1, B9]),
diferente([C1, C2, C3, C4, 2, C6, 5, C8, C9]),
diferente([4, D2, D3, D4, 1, D6, D7, D8, 3]),
diferente([E1, E2, 5, E4, 7, E6, 2, E8, E9]),
diferente([3, F2, F3, F4, F5, 6, F7, 8, F9]),
diferente([G1, 6, G3, G4, G5, 4, G7, G8, G9]),
diferente([5, H2, H3, H4, H5, H6, H7, H8, 9]),
diferente([I1, I2, 9, I4, 3, I6, 7, I8, I9]),

diferente([A1, A2, 5, 3, B2, B3, C1, C2, C3]),
diferente([8, A5, A6, B4, B5, B6, C4, 2, C6]),
diferente([A7, 7, A9, B7, 1, B9, 5, C8, C9]),
diferente([4, D2, D3, E1, E2, 5, 3, F2, F3]),
diferente([D4, 1, D6, E4, 7, E6, F4, F5, 6]),
diferente([D7, D8, 3, 2, E8, E9, F7, 8, F9]),
diferente([G1, 6, G3, 5, H2, H3, I1, I2, 9]),
diferente([G4, G5, 4, H4, H5, H6, I4, 3, I6]),
diferente([G7, G8, G9, H7, H8, 9, 7, I8, I9]),

diferente([A1, 8, A7, 4, D4, D7, G1, G4, G7]),
diferente([A2, A5, 7, D2, 1, D8, 6, G5, G8]),
diferente([5, A6, A9, D3, D6, 3, G3, 4, G9]),
diferente([3, B4, B7, E1, E4, 2, 5, H4, H7]),
diferente([B2, B5, 1, E2, 7, E8, H2, H5, H8]),
diferente([B3, B6, B9, 5, E6, E9, H3, H6, 9]),
diferente([C1, C4, 5, 3, F4, F7, I1, I4, 7]),
diferente([C2, 2, C8, F2, F5, 8, I2, 3, I8]),
diferente([C3, C6, C9, F3, 6, F9, 9, I6, I9]).

