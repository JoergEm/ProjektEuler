%%
%% erlang version "26"
%% 0001multiples_of_3_or_5.erl
%% Copyright 2025 @GitHub JoergEm
%%
%% This program is WITHOUT ANY WARRANTY; without even the implied
%% warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%%


multiples_of_3_or_5(M, Limit) ->
    Nummer = (Limit - 1) div M,
    M * Nummer * (Nummer + 1) div 2.

main(_) ->
    Summe = multiples_of_3_or_5(3, 1000) + multiples_of_3_or_5(5, 1000) - multiples_of_3_or_5(15, 1000),
    io:format("Die Summe ist: ~p~n", [Summe]).