%Predicados

%membro. Com o uso da funcao member
membro(X,L) :- member(X,L).

%subconjunto. Com o uso da funcao member
subconjunto([],_).
subconjunto([X|Y], K) :- member(X,K), subconjunto(Y,K).

%intersecao. Com o uso das funcoes member e not()

intersecao([],_,[]).
intersecao([A|B],D,[A|R]):- member(A,D), intersecao(B,D,R).
intersecao([A|B],D,R):- not(member(A,D)), intersecao(B,D,R).


% disjuntos. Observe que esse predicato disjunto depende de outro
% predicado intersecao, tambem foi utilizado a funcao not(), para que
% retorne true somente quando M eh vazia.

disjunto(L,K) :- intersecao(L,K,M), not(M\=[]).

%diferenca. Com o uso das funcoes not() e member

diferenca([],_,[]).
diferenca([A|B],K,M):- member(A,K), diferenca(B,K,M).
diferenca([A|B],K,[A|M]):- not(member(A,K)), diferenca(B,K,M).


% uniao. Observe que a uniao depende de outros dois predicados já antes
% definidos, e também foi utilizado a funcao append.

uniao(L,K,M) :-intersecao(L,K,M1), diferenca(L,M1,M2),append(M2,K,M).



