-module(yggdrasil_client).
% -behaviour(gen_server).

-export([ start/2, stop/1]).

-export([start_link/0]).
% -export([init/1, handle_call/3, handle_cast/2]).


start(normal, _Args) ->
    {ok, Sup} =yggdrasil_client_sup:start_link(),
    {ok, Sup, []}.

stop(_State) ->
    ok.

%%% Client Connections 

start_link() ->
    gen_server:start_link(?MODULE, [], []).


    
