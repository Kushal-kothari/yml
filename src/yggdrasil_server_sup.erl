-module(yggdrasil_server_sup).
% -behaviour(supervisor).

-export([start_link/1]).
% -export([init/1]).

start_link(ListenSocket) ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, [ListenSocket]).

% init([ListenSocket]) ->
%     {ok, {{simple_one_for_one, 60, 3600},


