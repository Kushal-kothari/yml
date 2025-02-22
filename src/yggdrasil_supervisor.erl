-module(yggdrasil_supervisor).
-behaviour(supervisor).
-include_lib("kernel/include/logger.hrl").

%% API
-export([start_link/0]).
-export([init/1]).

start_link() ->
    supervisor:start_link({global, ?MODULE}, ?MODULE, []).

init([]) ->
    ?LOG_INFO("~p (~p) starting . . . ~n", [{global, ?MODULE}, self()]),
    
%% @doc if maxrestarts restarts occurs in maxsecondsrestarts seconds    
%% @doc supervisor and child process are killed
   
    RestartStrategy = one_for_one,
    MaxRestarts = 3,
    MaxSecondsBetweenRestarts = 5,
    Flags = {RestartStrategy,MaxRestarts, MaxSecondsBetweenRestarts}, 

    Restart = permanent,
    Shutdown = infinity,
    Type = worker,
    ChildSpecifications = {yggdrasilServerId, {yggdrasil_server, start_link,[]}, Restart, Shutdown, Type, [yggdrasil_server]},

    {ok, {Flags, [ChildSpecifications]}}.
