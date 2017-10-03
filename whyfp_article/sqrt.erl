%% @author vladimir
%% @doc @todo Add description to sqrt.


-module(sqrt).

%% ====================================================================
%% API functions
%% ====================================================================
-export([sqrt/1]).

% --------------------------------------------------------
% Newton-Raphson square root implementation (section 4.1)
% --------------------------------------------------------

% this is just a wrapper for relativesqrt
sqrt(X) ->
	if
		X < 0 -> io:fwrite("argument cannot be negative");
		X == 0 -> 0.0;
		% relative accuracy computation (A0,Eps,X)
		true -> relativesqrt(1.0,1.0e-6,X)
	end.

%% ====================================================================
%% Internal functions
%% ====================================================================

% relativesqrt a0 eps x = relative eps (repeat (next N) a0)
relativesqrt(A0,Eps,X) ->
	% next approximation function (next N) a
	NextN = fun(A) -> next(X,A) end,
	% lazy evaluation here as repeat is a function with infinite output
	relative(Eps, repeat(NextN,A0)).

% this function controls output from repeat function
relative(Eps,Repeat) ->
	% initial output from repeat
	[A|F] = Repeat(),
	% next output from repeat
	[B|FF] = F(),
	if
		abs(A-B) < Eps*abs(B) -> B;
		true -> relative(Eps, FF)
	end.

% repeat f a = cons a (repeat f f(a))
% infinite output function
repeat(F,A) ->
	fun() -> [A|repeat(F,F(A))] end.

% next approximation of sqrt(N)
next(N,X) ->
	(X + N/X)/2.
