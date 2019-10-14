:- ['regras'].
:- ['animais'].

opt(1) :- nl, write('Tamagotchi tá nascendoo...'), nl, nl, sleep(1), X is random(4) + 1 ,  shell(clear),
write('Seu pet é um '),nl,nl
, exibir(X), nl, nl,write('Dê um nome ao seu pet... ')
,nl,read(N), nl, addPet(X, N, 10), interagir(N, X),nl.

opt(0) :- nl, write('Tamagotchi se foi...'), nl, nl,halt.

run :- read(X), opt(X).

menu :-
    write(' _____                                 _       _     _' ), nl,
    write('|_   _|_ _ _ __ ___   __ _  __ _  ___ | |_ ___| |__ (_)'), nl,
    write('  | |/ _` | \'_ ` _ \\ / _` |/ _` |/ _ \\| __/ __| \'_ \\| |'), nl,
    write('  | | (_| | | | | | | (_| | (_| | (_) | || (__| | | | |'), nl,
    write('  |_|\\__,_|_| |_| |_|\\__,_|\\__, |\\___/ \\__\\___|_| |_|_|'), nl,
    write('                           |___/'                       ), nl,
    write(' ____                                '), nl,
    write('| __ ) _ __ __ _ _____   _  ___ __ _ '), nl,
    write('|  _ \\| \'__/ _` |_  / | | |/ __/ _` |'), nl,
    write('| |_) | | | (_| |/ /| |_| | (_| (_| |'), nl,
    write('|____/|_|  \\__,_/___|\\__,_|\\___\\__,_|'), nl, nl,
    write('1 - Começar'), nl,
    write('0 -  Sair'), nl, nl, read(Op),nl,nl,write('você escolheu :' ),write(Op),nl,
    opt(Op),nl,sleep(3).

:- initialization main, halt.

main :-
    shell(clear), menu, run.