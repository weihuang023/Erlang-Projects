-module(tut6).
-export([list_max/1]).
%% There are two functions with same name list_max
%% Arity is number of arguments in this case list_max/1 and list_max/2.
list_max([Head|Rest]) -> 
   list_max(Rest, Head). % Swap rest number with head number 
                         % list_max([2,3,4,5,7,4,3,2,1],1) when list_max([1,2,3,4,5,7,4,3,2,1]).

list_max([], Res) -> % result will end when list is empty 
    Res;             
list_max([Head|Rest], Result_so_far) when Head > Result_so_far -> % to find the result so far use the when before "->" - guard  
    list_max(Rest, Head);                                         % Usefull operation such > < >= <= == in guard
list_max([Head|Rest], Result_so_far)  ->
    list_max(Rest, Result_so_far).
