:-['imagensAnimais'].

:-dynamic animal/2.

% animal(ID, Especie, ...)
animal(1, 'tamanduá').
animal(2, 'tucano').
animal(3, 'lobo-guara').
animal(4, 'jaguatirica').
animal(5, 'anta').
animal(6, 'tatu-canastra').
animal(7, 'papagaio').

:-dynamic animal/2.

% animal(ID, Especie, ...)
animal(1, 'tamanduá').
animal(2, 'tucano').
animal(3, 'lobo-guara').
animal(4, 'jaguatirica').
animal(5, 'anta').
animal(6, 'tatu-canastra').
animal(7, 'papagaio').

:-dynamic meuPet/3.
% meuPet(especie, nome, vida).
meuPet(-1, 'none', 5).
meuPet(1, 'melinha', 5).
meuPet(2, 'juju', 5).

addPet(ID, Nome, Vida) :- assert(meuPet(ID, Nome, Vida)).

removePet(ID):- Pet=meuPet(ID,_,_), !, retract(Pet).
removePet(_).

mostraUm(ID, Nome, Vida) :- write('id: '),write(ID),write(', nome: '),
    write(Nome),write(', vida: '),write(Vida),nl.
mostraPets :- meuPet(ID, Nome, Vida), mostraUm(ID, Nome, Vida),
    fail.
mostraPets.

add(X,Y,Sum):- (nonvar(X)-> Sum is X+Y;Sum is Y).

somarVida(ID, Soma, Sucesso) :- 
    meuPet(ID, Nome, Vida), 
    mostraUm(ID, Nome, Vida),
    add(Vida,Soma,NovaVida),
    NovaVida > 0 ->
        removePet(ID), addPet(ID, Nome, NovaVida), Sucesso = true 
    ; meuPet(ID, Nome, Vida), write(Nome), write(' morreu :('),nl, Sucesso = false, removePet(ID).
