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

:- dynamic exibir/1.
exibir(1):- tamandua.
exibir(2):- tucano.
exibir(3):- lobo.
exibir(4):- jaguatirica.
exibir(5):- tatu.
exibir(6):- tamandua.
exibir(7):- papagaio.

sobre(1):- write('Tipo: 1. O Tamanduá-Bandeira é um mamífero nativo da América. Ele recebe esse nome uma vez que sua cauda tem forma de uma bandeira.'),nl,
            write('São animais solitários quando atingem a idade adulta. Não são ágeis, nem agressivos.'),nl,
            write('Alimentam-se principalmente de pequenos insetos, por exemplo, formigas, cupins, larvas, centopeias, vermes.'),nl,
            write('Podem andar  e nadar'),nl.

sobre(2):- write('Tipo: 2. Tucano é uma ave linda, muito colorida e o que chama mais atenção é o bico enorme.'),nl,
            write('O tucano tem cores muito vivas que chamam a atenção das fêmeas. Mas, você acha que o bico dele é pesado? '),nl,
            write('O tucano é bom de bico... Ele se alimenta de muitas coisas, podem ser frutinhas e sementes, insetos, ovos de outras aves, lagartixas e pererecas. '),nl,
            write('Podem voar'),nl.


sobre(3):- write('Tipo: 3. O lobo-guará é um mamífero que está ameaçado em extinção.'), nl,
            write('Diferentemente de outras espécies de lobo que vivem em matilha, o lobo-guará é um animal de hábito solitário'),nl,
            write('O lobo-guará é um animal onívoro, pois consome uma grande variedade de animais e frutos. '),nl,
            write('Ele se alimenta de pequenos mamíferos, como gambás e roedores, além de aves, lagartos, cobras e insetos.'),
            write('Podem caminhar e correr.')
            ,nl.
sobre(4) :- write('Tipo: 4  . A Jaguatirica pertence à família dos felinos, seu nome científico é Leopardus pardalis. Como a maioria dos felinos, possui hábitos noturnos para se deslocar e caçar e dorme durante o dia, porém é comum vê-la em atividade durante o dia. É solitária e territorialista, demarcando seu território com urina e fezes.'),nl,
            write(' Possuem a habilidade para escalar árvores e já foram vistas nadando em busca de peixes para se alimentar. Além disso, consomem pequenos mamíferos, ovos de tartarugas, répteis, roedores e aves.'),nl.
