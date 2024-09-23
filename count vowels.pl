vowel(a).
vowel(e).
vowel(i).
vowel(o).
vowel(u).
vowel(A).
vowel(E).
vowel(I).
vowel(O).
vowel(U).

% Count vowels in a string
count_vowels([], N, N).
count_vowels([H|T], N, M) :-
    vowel(H),
    N1 is N + 1,
    count_vowels(T, N1, M).
count_vowels([H|T], N, M) :-
    \+ vowel(H),
    count_vowels(T, N, M).

% Query
count_vowels(String, 0, N).

