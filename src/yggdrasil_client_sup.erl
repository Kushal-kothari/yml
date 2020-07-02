-module(yggdrasil_client_sup).
% -behaviour(supervisor).

-export([start/0, start_link/0]).
% -export([init/1]).

start() ->
    supervisor:start({local, ?MODULE}, ?MODULE, []).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

% init([]) ->
