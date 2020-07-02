%%%-------------------------------------------------------------------
%% @doc yggdrasil public API
%% @end
%%%-------------------------------------------------------------------

-module(yggdrasil_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    yggdrasil_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
