-module(tut8).

-export([reverse/1]).

reverse(List) ->       % reverse([1,2,3])
    reverse(List, []). % reverse([1,2,3],[])

reverse([Head | Rest], Reversed_List) ->   % reverse([1|2,3],[])
    reverse(Rest, [Head | Reversed_List]); % reverse([2,3],[1|[]])
                                           % reverse([2|3],[1])
                                           % reverse([3],[2|[1]])
                                           % reverse([3|[]],[2,1])
                                           % reverse([],[3|[2,1]])
                                           % reverse([],[3,2,1])

reverse([], Reversed_List) ->            % reverse([],[3,2,1]) 
    Reversed_List.                       % [3,2,1]
