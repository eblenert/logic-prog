merge2(List, List, []).
merge2(List, [], List).

merge2([MinList1|RestMerged], [MinList1|RestList1], [MinList2|RestList2]) :-
  MinList1 =< MinList2,
  merge2(RestMerged,RestList1,[MinList2|RestList2]).
merge2([MinList2|RestMerged], [MinList1|RestList1], [MinList2|RestList2]) :-
  MinList2 =< MinList1,
  merge2(RestMerged,[MinList1|RestList1],RestList2).

mergeSort2([], []).
mergeSort2([A], [A|[]]).
mergeSort2(Sorted, List) :-
  length(List, N),
  FirstLength is //(N, 2),
  SecondLength is N - FirstLength,
  length(FirstUnsorted, FirstLength),
  length(SecondUnsorted, SecondLength),
  append(FirstUnsorted, SecondUnsorted, List),
  mergeSort2(FirstSorted, FirstUnsorted),
  mergeSort2(SecondSorted, SecondUnsorted),
  merge2(Sorted, FirstSorted, SecondSorted).

deldup(L,X):-dupacc(L,[],X).
dupacc([],A,A) .
dupacc([H|T],A,L):-member(H,A),!,dupacc(T,A, L).
dupacc([H|T],A,L):-append(A,[H],A1),dupacc(T, A1 , L ) .

sortFromFile:-see('pb.txt'),read(X),read(Y),read(Z),read(V),seen,deldup([X, Y, Z, V], L),tell('out.txt'), write(L),told.