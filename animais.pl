:-['imagensAnimais'].

:-dynamic animal/2.

% animal(ID, Especie)
animal(1, 'tamanduá').
animal(2, 'tucano').
animal(3, 'lobo-guará').
animal(4, 'jaguatirica').
animal(5, 'anta').
animal(6, 'tatu-canastra').
animal(7, 'papagaio').

:-dynamic meuPet/3.
% meuPet(especie, nome, vida).

addPet(ID, Nome, Vida) :- assert(meuPet(ID, Nome, Vida)).

removePet(ID):- Pet=meuPet(ID,_,_), !, retract(Pet).

mostraUm(ID, Nome, Vida) :- write('id: '),write(ID),write(', nome: '),
    write(Nome),write(', vida: '),write(Vida),nl.
mostraPets :- meuPet(ID, Nome, Vida), mostraUm(ID, Nome, Vida),
    fail.
mostraPets.

add(X,Y,Sum):- (nonvar(X)-> Sum is X+Y;Sum is Y).

tratarVida(ID, Soma) :- 
    meuPet(ID, Nome, Vida),
    add(Vida, Soma, NovaVida),nl,
    (Soma > 0 -> write('ganhou ');write('perdeu ')), write(Soma),write(' de vida'),
    nl, nl,
    NovaVida > 0 ->
        (NovaVida > 15 -> (write('seu bichinho passou mal de tanto comer, ele voltou para 10 de vida'), nl, removePet(ID), addPet(ID, Nome, 10) );
        (removePet(ID), addPet(ID, Nome, NovaVida) ))
    ; (meuPet(ID, Nome, Vida), write('*sniff sniff* '),write(Nome), write(' morreu T-T'), nl, removePet(ID), halt).
