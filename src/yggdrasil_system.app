
{application, yggdrasil_system,[
    {description, "Erlang Library to connect to Yggdrasil Network"},
    {vsn, "0.1.0"},
    {module, [yggdrasil_client, yggdrasil_logic, yggdrasil_server, yggdrasil_supervisor, yggdrasil_system]},
    {registered, []},
    {application,
     [kernel,
     stdlib
     ]},
    {mod, {yggdrasil_system, []}},
    {env, []},
    
    {licenses, ["Apache 2.0"]},
    {links, [{"Gitlab", "https://gitlab.com/barrel-db/lab/erlang-yggdrasil"}]}
]}.