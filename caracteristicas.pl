% animal(1, 'tamanduá-bandeira').
:-dynamic alimento/1.
alimento(1,formigas).
alimento(1,cupins).
alimento(1,centopeias).
alimento(1,vermes).

% animal(2, 'tucano').
alimento(2,sementes).
alimento(2,frutinhas).
alimento(2,ovos).
alimento(2,insetos).
alimento(2,pererecas).

% animal(3, 'lobo-guara').
alimento(3,gamba).
alimento(3,roedor).
alimento(3,ave).
alimento(3,lagarto).
alimento(3,cobra).
alimento(3,inseto).

% animal(4, 'jaguatirica').
alimento(4,rato).
alimento(4,gamba).
alimento(4,roedor).
alimento(4,peixe).
alimento(4,ovos).
alimento(4,cobra).

% animal(5, 'anta').
alimento(5,frutinhas).
alimento(5,sementes).
alimento(5,plantinhas).

% animal(6, 'tatu-canastra').
alimento(6,insetos).
alimento(6,larvas).
alimento(6,vermes).
alimento(6,aranhas).
alimento(6,cobra).

% animal(7, 'papagaio').
alimento(7,frutinhas).
alimento(7,flores).
alimento(7,coquinhos).


% animal(1, 'tamanduá-bandeira').
% animal(2, 'tucano').
% animal(3, 'lobo-guara').
% animal(4, 'jaguatirica').
% animal(5, 'anta').
% animal(6, 'tatu-canastra').
% animal(7, 'papagaio').
:-dynamic carinho/1.
carinho(1,sim).
carinho(2,sim).
carinho(3,nao).
carinho(4,nao).
carinho(5,nao).
carinho(6,sim).
carinho(7,sim).

:-dynamic passeio/1.
passeio(1,sim).
passeio(2,nao).
passeio(3,nao).
passeio(4,nao).
passeio(5,sim).
passeio(6,sim).
passeio(7,nao).


:-dynamic bronca/1.
bronca(1,nao).
bronca(2,sim).
bronca(3,nao).
bronca(4,nao).
bronca(5,nao).
bronca(6,sim).
bronca(7,nao).

:-dynamic ignora/1.
ignora(1,nao).
ignora(2,sim).
ignora(3,nao).
ignora(4,sim).
ignora(5,nao).
ignora(6,nao).
ignora(7,sim).