:- ['animais'].
:- ['caracteristicas'].
:-['sobre-animal'].
especie(ID, Especie) :- animal(ID, Especie).
adicionarAnimal(I,E):-assertz(animal(I,E)).
pegarEspecie(A) :- especie(A,E), write(E),nl.


alimentar(Alimento, X,Lista):- findall(Alimento, alimentos(X,Alimento),Lista).

fazerCarinho(A) :-  
    carinho(A,sim) ->
        (nl, write('*To feliz mas to com fome!*'), nl, nl )
        ; 
        (write('não é bom tentar fazer carinho'), nl, tratarVida(A, -1), nl).
levarParaPassear(A):- 
    passeio(A,sim) ->
        (nl, write('*Gostei do passeio mas to com fome!*'),nl,nl)
        ;
        (write('ele não gostaria de sair '),tratarVida(A, -1),nl,nl).
darAlimento(A):- 
    nl,write('Qual o alimento: '),nl,read(B),
    alimento(A,B) -> 
        (nl, write('*To muito feliz e de bucho cheio*'),tratarVida(A, 3), nl, nl)
        ;
        (write('não é recomendado alimentar com isso'),tratarVida(A, -3),nl,nl).
atoDeIgnorar(A):- 
    ignora(A,sim) -> 
        (write('*Estou inconsolável! :(*'),nl,nl)
        ;
        (write('*você não gostaria de receber uma também, né*'),tratarVida(A, -1),nl,nl).
darBronca(A):- 
    bronca(A,sim) -> 
        (write('*Estou muito triste e arrependido! :(*'),nl,nl)
        ;
        (write('ele pode reagir de forma ríspida'),tratarVida(A, -1),nl,nl).

acao(1, A):- fazerCarinho(A).
acao(2, A):- levarParaPassear(A).
acao(3, A):- darAlimento(A).
acao(4, A):- atoDeIgnorar(A).
acao(5, A):- darBronca(A).
acao(6, A):- sobre(A).
acao(0, A):- nl,write('Tamagotchi se foi...'), nl, nl,halt.

printCoracao(Qtd) :-
    Qtd > 0 -> 
        (write('♥ '), add(Qtd,-1,MenosUm), printCoracao(MenosUm))
        ;
        write(' ]'),nl.

mostrarVida(ID) :-
    nl,write('vida: '),
    meuPet(Y, Nome, Vida),write(Vida),write(' ['),
    printCoracao(Vida),nl.

interagir(X, Y) :- 
    shell(clear), write('Nome: '), 
    write(X), mostrarVida(Y), exibir(Y),
    write('Interaja com ele...'),nl,
    menuInteracao, nl,
    read(I), acao(I,Y),nl, write('Aperte enter para continuar'),get_single_char(LimpaBuff),get_single_char(Pausar),
    interagir(X, Y).

menuInteracao :-  
    nl, 
    write(' 1 - Carinhar'), nl,
    write(' 2 - Passear'), nl,
    write(' 3 - Alimentar'), nl,
    write(' 4 - Ignorar'), nl,
    write(' 5 - Dar bronca'), nl,
    write(' 6 - Sobre esse animal'), nl,
    write(' 0 - Sair'), nl.

