:- dynamic left_shift/2.
example:-see('pb.txt'),read(X),read(Y),read(Z),read(V),seen,tell('out'),left_shift([X,Y,Z,V],W),write('the sum of the elem is '),write(W),told.