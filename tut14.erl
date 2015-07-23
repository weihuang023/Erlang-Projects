-module(tut14).
-export([start/0, say_something/2]).
say_something(What, 0) ->
    done;
say_something(What, Times) ->
  io:format("~p~n", [What]),
  say_something(What, Times - 1).
start()->
  spawn(tut14,say_something,[Hello,3]),
  spawn(tut14,say_something,[Good,3]),
  spawn(tut14,say_something,[Thank You,3]).
