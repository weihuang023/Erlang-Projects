%% This module is in file tut5.erl
-module(tut5).
-export([format_temps/1]).
%% Only this function is exported

format_temps([])->                          % No output for an empty list
    ok;
format_temps([City | Rest]) ->              % create the list has head and tail
                                            % city is head and rest is tail
    print_temp(convert_to_celsius(City)),   % when format temp is called the first time, 
                                            % city gets the value which name and temp                                            % and the print temp is called 
    format_temps(Rest).                     % Rest is the rest of list and print temp is called

convert_to_celsius({Name, {c, Temp}}) ->    % No conversion needed
                                        
    {Name, {c, Temp}};
convert_to_celsius({Name, {f, Temp}}) ->    % Do the conversion
    {Name, {c, (Temp - 32) * 5 / 9}}.

print_temp({Name, {c, Temp}}) ->          % print tem is simple call io:format
    io:fwrite("~-15w ~w~n", [cityName, temperature]),
    io:format("~-15w ~w c~n", [Name, Temp]).
