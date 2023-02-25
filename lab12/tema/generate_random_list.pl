generate_random_list(Length, Max_value, L):-
    Length > 0,
    Length1 is Length - 1,
    random(0, Max_value, R),
    append([R], L, L1),
    write(L1), write("\n"),
    generate_random_list(Length1, Max_value, L1).