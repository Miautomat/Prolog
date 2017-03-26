/* Die Personen in Familie Maier sind:
Lore, Gerd, Gitte und Uli */
person(lore).
person(gerd).
person(gitte).
person(uli).
person(tim).
person(otto).



/* Die Frauen: */
weiblich(lore).
weiblich(gitte).

/* Die Maenner: */
maennlich(gerd).
maennlich(uli).
maennlich(tim).
maennlich(otto).

/* Das Ehepaar*/
verheiratet(lore, gerd).

/* Die Verliebten */
liebt(lore, gerd).
liebt(gerd, lore).
liebt(gitte, fido).

/* Der Hund heisst Fido */
hund(fido).

/* Die Spielzeugeisenbahn */
spielzeugeisenbahn(d318).

/* Eltern-Kind-Beziehungen */
vater(gerd,gitte). % gerd ist der vater von gitte
vater(gerd,uli).
vater(otto, gerd).
vater(tim, otto).
mutter(lore,gitte). % lore ist die mutter von gitte
mutter(lore,uli).

/* Jeder Vater schenkt seinem Sohn eine
Spielzeugeisenbahn */

schenkt(X,Y,Z) :- % X schenkt Y ein Z, falls
vater(X,Y), % X Vater von Y ist und
maennlich(Y), % Y maennlich ist und
spielzeugeisenbahn(Z). % Z eine Spielzeugeisenbahn ist


/* X ist Großvater von Y, falls Z der Vater von Y ist und X der Vater von Z ist.*/
großvaterVon(X,Y,Z):-
vater(Z,Y),
vater(X,Z).

/*
?- hund(fido).
yes
?- mutter(X,uli).
X = lore
?- vater(X,gitte), vater(X,uli).
X = gerd
?- schenkt(gerd,X,d318).
X = uli
*/
