# erlang-yggdrasil


A Yggdrasil library built in Erlang.

To run: first compile and then
```
1> yggdrasil_system:start().
2> yggdrasil_client:yggdrasil_connect(12321,"Your Yggdrasil address").   
```

# Requirements

Before using this you need to have [Yggdrasil](https://yggdrasil-network.github.io/installation.html) installed.


And check your Yggdrasil address and peers via command : 

```
$ sudo yggdrasilctl getpeers
```

```erlang

1> yggdrasil_system:start().
erlang_yggdrasil.erl:10: Warning: export_all flag enabled - all functions will be exported
ok
2>yggdrasil_client:yggdrasil_connect(12321,"203:18f0:c3bb:cd12:66d2:bb08:ce8d:9fde").
ok
3>yggdrasil_system:stop().                                                          
  
```

```erlang
~$  telnet 203:18f0:c3bb:cd12:66d2:bb08:ce8d:9fde 12321
Trying 203:18f0:c3bb:cd12:66d2:bb08:ce8d:9fde...
Connected to 203:18f0:c3bb:cd12:66d2:bb08:ce8d:9fde.
Escape character is '^]'.
Welcome! This is a Yggdrasil server developed under Barrel Labs.
> Hii from Yggdrasil Server
Hii from Yggdrasil Server
> exit
Connection closed by foreign host.


```