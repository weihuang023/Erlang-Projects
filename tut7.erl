-module(tut7).
-export([format_temps/1]).

format_temps(List_of_cities) ->         % create a list 
    Converted_List = convert_list_to_c(List_of_cities), % covert list to celsius if need 
    print_temp(Converted_List).         % print a list which has converted tenp ti celsius

convert_list_to_c([{Name, {f, F}} | Rest]) -> % loop that covert list to c when condition {name, {f,F}}
    Converted_City = {Name, {c, (F -32)* 5 / 9}}, % detail calculation
    [Converted_City | convert_list_to_c(Rest)];

convert_list_to_c([City | Rest]) ->   % gerenal about element converted
    [City | convert_list_to_c(Rest)];

convert_list_to_c([]) ->
    [].       % no format and raw data - [{moscow,{c,-10}},{cap_town,{c,21.111111},{pair,{c,-2.222}}}]

print_temp([{Name, {c, Temp}} | Rest]) ->
    io:format("~-15w ~w c~n", [Name, Temp]),
    print_temp(Rest);
print_temp([]) ->
    ok.

% Find Mini and Max

find_max_and_min([City | Rest]) ->
    find_max_and_min(Rest, City, City). % rest in list, mini, and max 

find_max_and_min([{Name, {c, Temp}} | Rest],
         {Max_Name, {c, Max_Temp}},
         {Min_Name, {c, Min_Temp}}) ->
    if
        Temp > Max_Temp ->
            Max_City = {Name, {c, Temp}};           % Change
        true ->
            Max_City = {Max_Name, {c, Max_Temp}} % Unchanged
    end,
    if
         Temp < Min_Temp ->
            Min_City = {Name, {c, Temp}};           % Change
        true ->
            Min_City = {Min_Name, {c, Min_Temp}} % Unchanged
    end,
    find_max_and_min(Rest, Max_City, Min_City);

find_max_and_min([], Max_City, Min_City) ->
    {Max_City, Min_City}.

print_max_and_min({Max_name, {c, Max_temp}}, {Min_name, {c, Min_temp}}) ->
    io:format("Max temperature was ~w c in ~w~n", [Max_temp, Max_name]),
    io:format("Min temperature was ~w c in ~w~n", [Min_temp, Min_name]).
