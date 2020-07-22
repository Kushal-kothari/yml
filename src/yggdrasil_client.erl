-module(yggdrasil_client).

-export([yggdrasil_connect/0]).

yggdrasil_connect() ->
    yggdrasil_server:yggdrasil_connect().


