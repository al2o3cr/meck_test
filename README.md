# MeckTest

Example for a bug with Meck and Elixir 1.5.0-rc.0

## Output in 1.4.5 (expected)

```
$ asdf local erlang 20.0
$ asdf local elixir 1.4.5
$ mix coveralls
Compiling 1 file (.ex)
Generated meck_test app
..

Finished in 0.2 seconds
2 tests, 0 failures

Randomized with seed 271060
Analysis includes data from imported files
["/Users/paulswartz/Projects/github/meck_test/Elixir.MeckTest.coverdata",
 "/Users/paulswartz/Projects/github/meck_test/Elixir.MeckTest_meck_original.coverdata"]
----------------
COV    FILE                                        LINES RELEVANT   MISSED
  0.0% lib/meck_test.ex                               18        0        0
[TOTAL]   0.0%
```

## Output in 1.5.0-rc.0 (actual)

```
$ asdf local erlang 20.0
$ asdf local elixir 1.5.0-rc.0
$ mix coveralls
Compiling 1 file (.ex)
Generated meck_test app
.

  1) test can be mocked (MeckTestTest)
     test/meck_test_test.exs:9
     ** (EXIT from #PID<0.232.0>) an exception was raised:
         ** (MatchError) no match of right hand side value: [error: {:no_abstract_code, <<70, 79, 82, 49, 0, 0, 2, 124, 66, 69, 65, 77, 65, 116, 85, 56, 0, 0, 0, 123, 0, 0, 0, 10, 29, 69, 108, 105, 120, 105, 114, 46, 77, 101, 99, 107, 84, 101, 115, 116, 95, 109, 101, 99, 107, 95, 111, 114, 105, ...>>}]
             (meck) /Users/paulswartz/Projects/github/meck_test/deps/meck/src/meck_cover.erl:32: :meck_cover.compile_beam/2
             (meck) /Users/paulswartz/Projects/github/meck_test/deps/meck/src/meck_proc.erl:387: :meck_proc.backup_original/3
             (meck) /Users/paulswartz/Projects/github/meck_test/deps/meck/src/meck_proc.erl:206: :meck_proc.init/1
             (stdlib) gen_server.erl:365: :gen_server.init_it/2
             (stdlib) gen_server.erl:333: :gen_server.init_it/6
             (stdlib) proc_lib.erl:247: :proc_lib.init_p_do_apply/3



Finished in 0.2 seconds
2 tests, 1 failure

Randomized with seed 206228
----------------
COV    FILE                                        LINES RELEVANT   MISSED
  0.0% lib/meck_test.ex                               18        0        0
[TOTAL]   0.0%
----------------
```
