
:- consult('animais').
:- ['caracteristicas'].
especie(ID, Especie) :- animal(ID, Especie).
adicionarAnimal(I,E):-assert(animal(I,E)).
pegarEspecie(A) :- especie(A,E), write(E),nl.


alimentar(Alimento, X,Lista):- findall(Alimento, alimentos(X,Alimento),Lista).

fazerCarinho(A) :-  carinho(A,sim),nl, write('To feliz mas to com fome!'),nl,nl; write('não é bom tentar fazer carinho'), nl, nl.
levarParaPassear(A):- passeio(A,sim),nl, write('To feliz mas to morrendo de fome!'),nl,nl;  write('ele não gostaria de sair '),nl,nl.