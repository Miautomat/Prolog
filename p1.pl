/*
Rangfolge:
 V > SV > SK
 */

/* Bewerber*/
bewerber(albert).
bewerber(berta).
bewerber(chris).
bewerber(detlef).
bewerber(emma).
bewerber(felix).

/* Posten*/
job(vorsitz).
job(stellvertretung).
job(sekreteriat).

/*Arbeitsplätze*/
posten(vorsitz, Bewerber).
posten(stellvertretung, Bewerber).
posten(sekreteriat, Bewerber).

/* Bedingungen*/
/* a) (Albert ^ (Stellvertretung v Sekreteriat)) ^ (Emma ^ Vorsitz) */
funktioniert(albert, stellvertretung, emma, vorsitz).
funktioniert(albert, sekreteriat, emma, vorsitz).

/* b) (Berta ^ Stellvertretung) ^ (Chris ^ Vorsitz) v
      (Berta ^ Sekreteriat) ^ (Chris ^ (Vorsitz v Stellvertretung))*/
funktioniert(berta, stellvertretung, chris, vorsitz).
funktioniert(berta, sekreteriat, chris, vorsitz).
funktioniert(berta, sekreteriat, chris, stellvertretung).

/* c) (Berta => !Felix) */

/* d) (Chris ^ (Emma xor Felix)  */

/* e) (Chris ^ ((Felix ^ Vorsitz) v (Berta ^ (Sekreteriat)) */


/* f) (Detlef ^ !(Chris v Emma) ^ (((Chris v Emma) ^ (Vorsitz v Stellvertretung) ^ (Detlef ^ Sekreteriat)) v
   (Chris v Emma) ^ Vorsitz ^ (Detlef ^ (Sekreteriat v Stellvertretung))) */

/* g) (Emma ^ (Vorsitz v Sekreteriat) */

/* h) (Emma ^ !Sekreteriat) ^ (Detlef ^ (Vorsitz v Stellvertretung v Sekreteriat)) */

/* i) (Emma ^ !Albert) ^ (Felix ^ !(Vorsitz v Stellvertretung v Sekreteriat))*/

/* j) (Felix ^ (Vorstand ^ (Felix v Chris)))*/

/* Entscheidung*/
/*einstellen(V, SV, S):-
 posten(



 */






