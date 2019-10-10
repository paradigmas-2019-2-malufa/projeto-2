:- consult('animais').
:- ['caracteristicas'].
especie(ID, Especie) :- animal(ID, Especie).
adicionarAnimal(I,E):-assert(animal(I,E)).
pegarEspecie(A) :- especie(A,E), write(E),nl.


alimentar(Alimento, X,Lista):- findall(Alimento, alimentos(X,Alimento),Lista).

fazerCarinho(A) :-  carinho(A,sim),nl, write('To feliz mas to com fome!'),nl,nl; write('não é bom tentar fazer carinho'), nl, nl.
levarParaPassear(A):- passeio(A,sim),nl, write('To feliz mas to morrendo de fome!'),nl,nl;  write('ele não gostaria de sair '),nl,nl.
darAlimento(A):- nl,write('Qual o alimento'),nl,read(B),alimento(A,B),nl, write('To muito feliz'), nl, nl;write('não é recomendado alimentar com isso'),nl,nl.
atoDeIgnorar(A):- nl,ignora(A,sim), write('Estou inconsolável! :('),nl,nl; write('você não gostaria de receber uma também, né'),nl,nl.
darBronca(A):- nl,bronca(A,sim),  write('Estou muito triste e arrependido! :('),nl,nl; write('ele pode reagir de forma ríspida'),nl,nl.