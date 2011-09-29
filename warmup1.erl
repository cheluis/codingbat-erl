-module(warmup1).
-export([sleepin/2, monkey_trouble/2, sum_double/2]).

sleepin(W, V)->
    if W == false ; V == true -> true;
        W == true -> false
    end.

monkey_trouble(A, B)->
    if A == true , B == true ->true;
        A == false , B == false ->true;
        A == false , B == true -> false;
        A == true , B == false -> false
    end.

sum_double(A, B)->
    if A == B -> (A + B) * 2;
        true -> A + B
    end.
