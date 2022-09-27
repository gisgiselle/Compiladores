grammar Mistery;

prog:	(Aa)* ;

// Describe con palabras lo que acepta la regla Aa
/* La regla Aa acepta un ID.
Este Id acepta perimero Letter y despuès LetterOrDigit
Letter son las letras de la a A a la Z
LetterOrDigit acepta letter o nùmeros del 0 al 9.
Una vez aceptado el ID, acepta, obligatoriamente seguido del caracter '['
un ID o un Integer (el cual acepta una combinacion de numeros del 0 al 9)
seguido de ']'
 Todo lo que esta dentro del parentesis puede ser repetido o no por el +
 */
Aa:	ID ('[' (ID | INTEGER) ']') +
    ;


ID: Letter LetterOrDigit*;
INTEGER : [0-9]+ ;

// fragment es para crear segmentos de token que solamente serán usados en este archivo, pero que no
// generan un token. Son como definiciones "locales" a este archivo.

fragment LetterOrDigit
    : Letter
    | [0-9]
    ;

fragment Letter : [a-zA-Z$_] ;