%% @author vladimir
%% @doc @todo Add description to whyfp.


-module(whyfp).

%% ====================================================================
%% API functions
%% ====================================================================
-export([main/1]).
-import(sqrt,[sqrt/1]).

main(Example) ->

	case Example of
		sqrt -> 
			% -------- LAZY EVALUATION EXAMPLE -------------------
			% Newton-Raphson square root computation (section 4.1)
			io:fwrite("Newton-Raphson square root computation~n"),
			{ok,[X]} = io:fread("Enter your number: ", "~d"),
			io:fwrite("sqrt(~p) = ~p~n",[X,sqrt(X)])
	end.




%% ====================================================================
%% Internal functions
%% ====================================================================

