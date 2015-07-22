-module(simple).
-export([server/1,client/1,start/1,owner/1]).

%% CS610 Erlang Assignment#6
%% Wei Huang
%% Dr. Marchese

server(State)->
receive
	{request,Return_PID}->
		io:format("SERVER ~w: Client request received from ~w~n",
					[self(),   Return_PID]),
			NewState=State+1,
			Return_PID ! {hit_count,NewState},
			server(NewState);

 	{server_owner,Owner_PID} ->
		io:format("SERVER ~w: Owner query received from ~w~n", [self(), Owner_PID]),
        Owner_PID ! {hit_count,State},
      	server(State);

  reset ->
				io:format("SERVER ~w: Owner reset message has received.~n", [self()]),
        server(0);

	stop ->
			io:format("Finished~n")

	end.



client(Server_Address)->
	Server_Address!{request,self()},
		receive
		{hit_count,Number}->
			io:format("CLIENT ~w: Hit count was ~w~n",[self(), Number])
	end.


owner(Server_PID) ->

	timer:sleep(random:uniform(100)),
	Server_PID ! {server_owner,self()},

receive
		{hit_count,Number} ->
				io:format("OWNER ~w: Hit count is ~w~n",[self(), Number]),

			if
				Number ==  6 ->
					Server_PID  !  reset,
					io:format("OWNER ~w: Hit count is ~w, send   reset   message....~n",[self(),Number]),
					owner(Server_PID);
				true ->
					owner(Server_PID)
			end
	end.



start(N)->
	Server_PID=
		spawn(simple,server,[0]),
		spawn(simple,owner,[Server_PID]),
		spawn_n(N,Server_PID).


spawn_n(N,Server_PID) ->
 	if
		N>0 ->
		spawn(simple,client,[Server_PID]),
		timer:sleep(random:uniform(100)),
		spawn_n(N-1,Server_PID);
	N == 0 ->
		io:format("Last   client   spawned.~n"),
		Server_PID  !  stop
	end.
