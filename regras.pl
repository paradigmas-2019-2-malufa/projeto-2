
:- consult('animais').
especie(ID, Especie) :- animal(ID, Especie).
adicionarAnimal(I,E):-assert(animal(I,E)).
pegarEspecie(A) :- especie(A,E), write(E),nl.
