:- consult('animais').
:- ['caracteristicas'].
especie(ID, Especie) :- animal(ID, Especie).
adicionarAnimal(I,E):-assertz(animal(I,E)).
pegarEspecie(A) :- especie(A,E), write(E),nl.


alimentar(Alimento, X,Lista):- findall(Alimento, alimentos(X,Alimento),Lista).

fazerCarinho(A) :-  carinho(A,sim),nl, write('To feliz mas to com fome!'),nl,nl; write('não é bom tentar fazer carinho'), nl, nl.
levarParaPassear(A):- passeio(A,sim),nl, write('To feliz mas to morrendo de fome!'),nl,nl;  write('ele não gostaria de sair '),nl,nl.
darAlimento(A):- nl,write('Qual o alimento'),nl,read(B),alimento(A,B),nl, write('To muito feliz'), nl, nl;write('não é recomendado alimentar com isso'),nl,nl.
atoDeIgnorar(A):- nl,ignora(A,sim), write('Estou inconsolável! :('),nl,nl; write('você não gostaria de receber uma também, né'),nl,nl.
darBronca(A):- nl,bronca(A,sim),  write('Estou muito triste e arrependido! :('),nl,nl; write('ele pode reagir de forma ríspida'),nl,nl.

acao(1, A):- fazerCarinho(A).
acao(2, A):- levarParaPassear(A).
acao(3, A):- darAlimento(A).
acao(4, A):- atoDeIgnorar(A).
acao(5, A):- darBronca(A).

interagir(X, Y) :- 
    write('Seu pet se chama '), 
    write(X), write('. Interaja com ele...'),
    A=Y, menuInteracao, nl,
    read(I), acao(I,A),
    V=X, resposta(Y, V).
    
resposta(Y, V) :-  read(I), shell(clear), write('Seu pet é um '), exibir(Y), nl, sobre(Y), nl,write('---'),nl,write('---'),nl,nl, write('Seu pet se chama '), write(V), write('. Interaja com ele...'), nl, menuInteracao, sentimento(I,A), resposta(Y, V).

menuInteracao :-  nl, write(' 1 - Carinhar'), nl,
 		      write(' 2 - Passear'), nl,
		      write(' 3 - Alimentar'), nl,
 		      write(' 4 - Ignorar'), nl,
		      write(' 5 - Dar bronca'), nl,
              write(' 0 - Sair'), nl.

