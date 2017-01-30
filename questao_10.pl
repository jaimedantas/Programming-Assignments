%Portas logicas
%funcoes de portas logicas do prolog
and(A, B) :- A, B.
or(A, B):- A; B.
nand(A,B):- not( and(A, B)).
nor(A,B):- not( or(A, B)).
%regra
evaluate(E, true) :- E, !.
evaluate(_, false).
%uso de algebra booleana
bool(true).
bool(false).

tabeladaverdade(A,B,E) :-
	%escreve a tabela
  write('A'),
  write(' \t '),
  write('B'),
  write(' \t '),
  write('Result'),
  write('\n\n'),
  %calcula os valores logicos
  bool(A),
  bool(B),
  write(A),
  write(' \t '),
  write(B),
  write(' \t '),
  evaluate(E, Result),
  write(Result),nl, fail.
