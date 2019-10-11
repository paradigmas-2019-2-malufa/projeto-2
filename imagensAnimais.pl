:- dynamic exibir/1.

% tamanduá
exibir(1) :-
    write("                  _________ ______" ), nl,
    write("              ___/         V      '\\'" ), nl,
    write("            / v           |\\       \\'" ), nl,
    write("           /_@/-\\  /  \\   | ~~~~\\  |" ), nl,
    write("  ,,      //     \\ |---\\_ |      ~~" ), nl,
    write("  Oo=    |/       \\|     \\| "), nl,
    write("~~^^^~~~~~~~~~~~~~^~~~~~~^^~~~~~~~~~~"), nl.

% tucano
exibir(2) :-
    write("       _------..:::.  "), nl,            
    write("    _.´       (@) ::       "), nl,      
    write("   /     ..::: |--:::             "), nl,
    write("  .   .´     . /    ::\\            "), nl,
    write(" /  .´ ...----´\\|  :::|:.           "), nl,
    write(" |..--´        /    .:::::::.      "), nl,
    write("              |   |:::::::::::.                   /::::)"), nl,
    write("              \\::::::::::::::::::.      /:::::::::/"), nl,
    write("               \\.::::::::::::::::::::::::/. "), nl,
    write("                 `..::::::::::::::: "), nl,
    write("                         |/ "), nl,
    write("                        // "), nl,
    write("                       // "), nl,
    write("                     ((0) "), nl,
    write("                      ` ´"), nl.

% lobo-guará
exibir(3) :-
    write("                        ,     ," ), nl,
    write("                        |\\---/|"), nl,
    write("                       /  , ,  |" ), nl,
    write("                  __.-'|  / \\ /)"), nl,
    write("         __ ___.-´        ._./ "), nl,
    write("      .-'  '        :      _/ "), nl,
    write("     / ,    .        .     |" ), nl,
    write("    :  ;    :        :   _/" ), nl,
    write("    |  |   .'     __:   /' "), nl,
    write("    |  :   /'----'| \\  |" ), nl,
    write("    \\  |\\  |      | /| |" ), nl,
    write("     '.'| /       || \\ |" ), nl,
    write("     | /|.'       '.l \\\\_" ), nl,
    write("     || ||             '-'" ), nl,
    write("     '-''-'" ), nl.

% jaguatirica
exibir(4) :-
    write("        _..---...,""-._     ,/}/)" ), nl,
    write("     .'''        ,      ``..'(/-<"), nl,
    write("    /   _      {      )         \\'" ), nl,
    write("   ;   _ `.     `.   <         a(" ), nl,
    write(" ,''   ( \\  )      `.  \\ __.._ .: y " ), nl,
    write("(  <\\_-) )''.____...\\  `._   //-"), nl,
    write(" `. `-'' /-._)))      `-._)))"), nl,
    write("   `...''        "), nl.

% anta
exibir(5) :-
    write("        _,.,.__,--.__,-----." ), nl,
    write("    ,""  ''))               `."), nl,
    write(" ,´   @                       ))"), nl,
    write("(  .=´__,                 ,  /" ), nl,
    write(" `~`     `-\\  /._____,/   /  /" ), nl,
    write("            | | )    (  (   ;" ), nl,
    write("            | | |    / / / / " ), nl,
    write("    vvVVvvVvVVVvvVVVvvVVvVvvvVvVVvv "), nl.

% exibir
exibir(6) :-
    write("            ,.-----__" ), nl,    
    write("          ,:::://///,:::-. " ), nl,
    write("         /:''/////// ``:::`;/|/" ), nl,
    write("        /'   ||||||     :://'`\\' "), nl,
    write("      .´ ´   ||||||     `/(  @ \\"), nl,
    write("-===~__-´\\__X_`````\\_____/~`-._ `.´"), nl,
    write("            ~~        ~~       `~-"), nl.

% papagaio
exibir(7) :-
    write("                        ." ), nl,
    write("                         | \\/|" ), nl,
    write("                         ) )|/|" ), nl,
    write("                 _----. /.'.'" ), nl,
    write(".-._________..      .' @ _\\  .'   " ), nl,
    write("'.._______.   '.   /    (__| ."), nl,
    write("  '._____.  /   '-/      | _." ), nl,
    write("   '.______ (         ) ) \\"), nl,
    write("     '..____ '._       )  )" ), nl,
    write("        .' __.--\\  , ,  // (( "), nl,
    write("        '.'  mrf|  \\/   ((_." ), nl,
    write("                '   \\ .' " ), nl,
    write("                 \\   (" ), nl,
    write("                  \\   '."), nl,
    write("                   \\ \\ '.)" ), nl,
    write("                    '-'-" ), nl.

exibir(_) :- write('Id de animal invalido!'), nl.
