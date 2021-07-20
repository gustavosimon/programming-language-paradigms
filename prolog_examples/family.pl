homem(tera).
homem(abraao).
homem(ruben).
homem(levi).
homem(simeao).
homem(dan).
homem(jose).
homem(efraim).
homem(manasses).
homem(ismael).
homem(isaque).
homem(jaco).
homem(esau).
mulher(sara).
mulher(agar).
mulher(rebeca).
mulher(leia).
mulher(raquel).
mulher(dercy).
mulher(toniacarreiro).
mulher(hebe).
gerou(tera, abraao).
gerou(abraao, ismael).
gerou(abraao, isaque).
gerou(sara, isaque).
gerou(agar, ismael).
gerou(isaque, esau).
gerou(isaque, jaco).
gerou(rebeca, esau).
gerou(rebeca,jaco).
gerou(jaco, ruben).
gerou(jaco, simeao).
gerou(jaco, levi).
gerou(jaco, dan).
gerou(leia, simeao).
gerou(leia, levi).
gerou(leia, dan).
gerou(jaco, jose).
gerou(leia, ruben).
gerou(raquel, jose).
gerou(jose, efraim).
gerou(jose, manasses).
pai(X,Y) :- homem(X), gerou(X,Y).
mae(X,Y) :- mulher(X), gerou(X,Y).
irmao(X,Y) :- homem(X), gerou(Z,X), gerou(Z,Y), X \== Y.
irma(X,Y) :- mulher(X), gerou(Z,X), gerou(Z,Y), X \== Y.
avo(X,Y) :- pai(X,Z), gerou(Z,Y).
avoh(X,Y) :- mae(X,Z), gerou(Z,Y).
antepassado(X,Y) :- gerou(X,Y).
antepassado(X,Y) :- gerou(X,Z), antepassado(Z,Y).