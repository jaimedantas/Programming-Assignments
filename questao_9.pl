%coloracao do mapa do Brasil

%combinacao de cores dois a dois
vizinho(azul,verde).
vizinho(azul,vermelho).

vizinho(amarelo,azul).
vizinho(amarelo,verde).
vizinho(amarelo,vermelho).

vizinho(vermelho,amarelo).
vizinho(vermelho,azul).
vizinho(vermelho,verde).

vizinho(verde,amarelo).
vizinho(verde,azul).
vizinho(verde,vermelho).

%definicao do predicado colorir
colorir(RN,PB,PE,AL,CE,SE,BA,PI,MA,TO,GO,MG,ES,RJ,MS,SP,PR,SC,RS,PA,MT,RO,AP,AM,AC,RR) :-
vizinho(RN,PB),vizinho(RN,CE),
vizinho(PB,RN),vizinho(PB,CE),
vizinho(PB,PE),vizinho(CE,PI),
vizinho(CE,RN),vizinho(CE,PB),
vizinho(CE,PE),vizinho(PE,CE),
vizinho(PE,AL),vizinho(PE,PI),
vizinho(AL,PE),vizinho(AL,SE),
vizinho(AL,BA),vizinho(SE,BA),
vizinho(SE,PE),vizinho(PI,CE),
vizinho(PI,PE),vizinho(PI,MA),
vizinho(PI,BA),vizinho(PI,TO),
vizinho(BA,SE),vizinho(BA,AL),
vizinho(BA,PE),vizinho(BA,PI),
vizinho(BA,TO),vizinho(MG,BA),
vizinho(MG,ES),vizinho(MG,GO),
vizinho(MG,RJ),vizinho(MG,SP),
vizinho(MG,MS),vizinho(ES,MG),
vizinho(ES,RJ),vizinho(ES,BA),
vizinho(RJ,ES),vizinho(RJ,MG),
vizinho(RJ,SP),vizinho(GO,TO),
vizinho(GO,BA),vizinho(GO,MT),
vizinho(GO,MG),vizinho(GO,MS),
vizinho(GO,SP),vizinho(MS,GO),
vizinho(MS,MT),vizinho(MS,MG),
vizinho(MS,SP),vizinho(MS,PR),
vizinho(SP,MS),vizinho(SP,MG),
vizinho(SP,RJ),vizinho(SP,GO),
vizinho(SP,PR),vizinho(PR,SP),
vizinho(PR,MS),vizinho(PR,SC),
vizinho(SC,PR),vizinho(SC,RS),
vizinho(RS,SC),vizinho(MA,PI),
vizinho(MA,BA),vizinho(MA,TO),
vizinho(MA,PA),vizinho(TO,MA),
vizinho(TO,PI),vizinho(TO,BA),
vizinho(TO,GO),vizinho(TO,PA),
vizinho(TO,MT),vizinho(PA,MA),
vizinho(PA,TO),vizinho(PA,MT),
vizinho(PA,AM),vizinho(PA,RR),
vizinho(PA,AP),vizinho(MT,PA),
vizinho(MT,TO),vizinho(MT,GO),
vizinho(MT,MS),vizinho(MT,RO),
vizinho(MT,AM),vizinho(AP,PA),
vizinho(RO,AC),vizinho(RO,AM),
vizinho(RO,MT),vizinho(AC,RO),
vizinho(AC,AM),vizinho(AM,RR),
vizinho(AM,PA),vizinho(AM,MT),
vizinho(AM,RO),vizinho(AM,AC).
