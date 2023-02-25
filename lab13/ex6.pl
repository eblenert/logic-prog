animal(duck).
animal(cat).
animal(dog).
animal(horse).

swim(duck).
swim(dog).

r(X):-animal(X),swim(X),!,fail.
r(X):-animal(X).


friend(radu, elena).
friend(elena, mihai).
friend(zoe, viorel).

unfriend(X, Y):-friend(X,Y),!,fail.
unfriend(X, Y).