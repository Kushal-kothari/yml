 -module(yggdrasil_server).
% -behaviour(gen_server).

-export([start/2, stop/1]).

-export([start_link/1]).

% callbacks
% -export([init/1, handle_call/3, handle_cast/2]).


%% Start the Yggdrasil app. Opens a listen port at the port defined 
%% and opens Acceptors number of concurrent acceptors.
start(normal, _Args) ->
    {ok, ListenSocket} = gen_tcp:listen(12345, [{active,once}, {reuseaddr, true}, inet6]),
    {ok, Sup} = server_sup:start_link(ListenSocket),
    _ = [ supervisor:start_child(Sup, []) || _ <- lists:seq(1,Acceptors)],
    {ok, Sup, ListenSocket}.

%% Stop yggdrasil (closes the listen socket)
stop(ListenSocket) ->
    ok = gen_tcp:close(ListenSocket),
    ok.


start_link(Socket) ->
    gen_server:start_link(?MODULE, Socket, []).



