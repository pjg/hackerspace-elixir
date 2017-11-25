# Hackerspace

Sample http server in Elixir done as a part of
[Elixir Workshop](https://www.meetup.com/Elixir-Tricity/events/245238579/)
in [Hacker:Space Trójmiasto](http://hs3.pl/).


## Installation


```bash
mix deps.get
```


## Running

Run the server:

```bash
mix run -e "Server.start(4000)"
```

Test it:

```bash
curl -X POST -d a=a localhost:4000?test=test
```

Should return:

```
OK Łódź%
```



## Running tests

To run all tests:

```bash
mix test
```

To run file watcher:

```bash
mix test.watch --stale
```
