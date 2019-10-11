:-['anta'].
:-['jaguatirica'].
:-['lobo-guara'].
:-['papagaio'].
:-['tatu-canastra'].
:-['tamandua'].
:-['tucano'].

% animal(ID, Especie, ...)
:-dynamic animal/2.
animal(1, 'tamanduá').
animal(2, 'tucano').
animal(3, 'lobo-guara').
animal(4, 'jaguatirica').
animal(5, 'anta').
animal(6, 'tatu-canastra').
animal(7, 'papagaio').

:- dynamic exibir/1.
exibir(1):- tamandua.
exibir(2):- tucano.
exibir(3):- lobo.
exibir(4):- jaguatirica.
exibir(5):- anta.
exibir(6):- tatu.
exibir(7):- papagaio.

