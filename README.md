# erlang-yggdrasil


A Yggdrasil library built in Erlang.

To run, just choose any Port number and your IPv6 Yggdrasil address:
```
1> c(erlang_yggdrasil).
2> erlang_yggdrasil:start_server(12321,"Your Yggdrasil address").   
```

# Requirements

Before using this you need to have [Yggdrasil](https://yggdrasil-network.github.io/installation.html) installed.


And check your Yggdrasil address and peers via command : 

```
$ sudo yggdrasilctl getpeers
```

```erlang

1> c(erlang_yggdrasil).
erlang_yggdrasil.erl:10: Warning: export_all flag enabled - all functions will be exported
{ok,erlang_yggdrasil}
2> erlang_yggdrasil:start_server(12321,"203:18f0:c3bb:cd12:66d2:bb08:ce8d:9fde").
{{2020,7,8},{19,26,39}} Server Started.
ok
  
```

```erlang
~$  telnet 203:18f0:c3bb:cd12:66d2:bb08:ce8d:9fde 12321
Trying 203:18f0:c3bb:cd12:66d2:bb08:ce8d:9fde...
Connected to 203:18f0:c3bb:cd12:66d2:bb08:ce8d:9fde.
Escape character is '^]'.
Welcome! This is a Yggdrasil server developed under Barrel Labs.
You and I have memories longer than the road stretches out ahead.
> Hii from Yggdrasil Server
Hii from Yggdrasil Server
> exit
Connection closed by foreign host.


```