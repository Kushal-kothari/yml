# erlang-yggdrasil


A Yggdrasil library built in Erlang.


# Requirements

Before using this you need to have [Yggdrasil](https://yggdrasil-network.github.io/installation.html) installed.


And check your Yggdrasil address and peers via command : 

```
$ sudo yggdrasilctl getpeers
```

## Configuration

Configuration parameters like the yggdrasil address, the listening port are to be added through a configuration file, see the	`yggdrasil.config`.
By Default we are using Port 2000


# How to use

Compile with `erl -make all`. Start the server with

```
erl -pa ebin -s yggdrasil_system -config yggdrasil.config
Erlang/OTP 23 [erts-11.0.2] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1]

Eshell V11.0.2  (abort with ^G)
1> yggdrasil_client:yggdrasil_connect().
{{2020,7,22},{13,1,51}} Yggdrasil Server Started.
ok
```
To stop the application.

```erlang

2>yggdrasil_system:stop().   
    application: yggdrasil_system
    exited: stopped
    type: temporary

ok                                                       
  
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

This project is currently in its initial stages with basic functionalities .More features are indeed going to be added :)
