# UniversalServer

Joe Armstrong's [favorite Erlang program](https://joearms.github.io/published/2013-11-21-My-favorite-erlang-program.html) in Elixir


```bash
$ iex -S mix

iex(1)> pid = spawn(&UniversalServer.start/0)
#PID<0.154.0>
iex(2)> send(pid, {:become, &FactorialServer.start/0})
{:become, &FactorialServer.start/0}
iex(3)> send(pid, {self(), 50})
{#PID<0.152.0>, 50}
iex(4)> receive do
...(4)>   result -> result
...(4)> end
30414093201713378043612608166064768844377641568960512000000000000
```

