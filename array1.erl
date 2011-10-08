-module (array1).
-export([first_last_6/1, same_first_last/1, sum_3/1, reverse_3/1, max_end_3/1,
sum_2/1, middle_way/2, make_last/1]).
first_last_6(L)->
    lists:member(6,L).

same_first_last(L)->
    [H|T] = L,
    X = lists:last(L),
    if X =:= H-> true;
        true -> false
    end.

sum_3(L)->
    lists:foldl(fun(X, Sum)-> X + Sum end, 0, L).

reverse_3(L)->
    lists:reverse(L).

max_end_3(L)->
    [H|T] = L,
    X = lists:last(L),
    if X >= H -> [X || Y <- L];
        true -> [H || Y<-L]
    end.

sum_2(L) when length(L) > 1 ->
        lists:foldl(fun(X, Sum)-> X + Sum end, 0, L);
sum_2(_) -> 0.

middle_way(P, Q) when length(P) =:= 3 ->
    [lists:nth(2, P), lists:nth(2, Q)];
middle_way(P, Q) when length(P) =/= 3 ->
    io:format("Error").

has_23(L) ->
    lists:member(2, L) or lists:member(3, L).

make_last(L) ->
    X = [0 || Y <- lists:seq(1, (length(L) * 2)-1)],
    X ++ lists:last(L).

