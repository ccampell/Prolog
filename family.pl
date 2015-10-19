male(charlie).
male(mark).
male(jay).
male(baron).
male(grayson).
male(ethan).

female(ginny).
female(cindy).
female(celeste).

/* parent(A, B) means A is the parent of B */
parent(charlie, cindy).
parent(charlie, celeste).
parent(charlie, mark).
parent(ginny, cindy).
parent(ginny, celeste).
parent(ginny, mark).
parent(cindy, baron).
parent(cindy, grayson).
parent(cindy, ethan).
parent(jay, baron).
parent(jay, grayson).
parent(jay, ethan).

/* sibling(A, B) means that A and B are siblings */
sibling(X,Y):-parent(Z,X),parent(Z,Y),\+(X=Y).
married(X,Y):-parent(X,Z),parent(Y,Z),\+(X=Y).

