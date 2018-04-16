# QueuesBenchmark


A (somewhat unscientific) Benchmark of the different queue implementations used in Okasaki:

```
Operating System: Linux"
CPU Information: Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz
Number of Available Cores: 8
Available memory: 7.63 GB
Elixir 1.6.1
Erlang 20.1

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 10 s
memory time: 2 s
parallel: 1
inputs: none specified
Estimated total run time: 42 s


Benchmarking Elixir.Okasaki.Implementations.AmortizedQueue...
Benchmarking Elixir.Okasaki.Implementations.ConstantQueue...
Benchmarking Elixir.Okasaki.Implementations.ErlangQueue...

Name                                                    ips        average  deviation         median         99th %
Elixir.Okasaki.Implementations.ErlangQueue          1012.96        0.99 ms    ±18.54%        0.92 ms        1.63 ms
Elixir.Okasaki.Implementations.AmortizedQueue        892.34        1.12 ms    ±32.26%        1.00 ms        2.63 ms
Elixir.Okasaki.Implementations.ConstantQueue         636.71        1.57 ms    ±20.55%        1.54 ms        2.83 ms

Comparison: 
Elixir.Okasaki.Implementations.ErlangQueue          1012.96
Elixir.Okasaki.Implementations.AmortizedQueue        892.34 - 1.14x slower
Elixir.Okasaki.Implementations.ConstantQueue         636.71 - 1.59x slower

Memory usage statistics:

Name                                                  average  deviation         median         99th %
Elixir.Okasaki.Implementations.ErlangQueue            0.99 MB     ±0.71%        0.99 MB        0.99 MB
Elixir.Okasaki.Implementations.AmortizedQueue         1.23 MB     ±1.22%        1.23 MB        1.23 MB
Elixir.Okasaki.Implementations.ConstantQueue          1.64 MB     ±0.00%        1.64 MB        1.64 MB

Comparison: 
Elixir.Okasaki.Implementations.ErlangQueue            0.99 MB
Elixir.Okasaki.Implementations.AmortizedQueue         1.23 MB - 1.24x memory usage 
Elixir.Okasaki.Implementations.ConstantQueue          1.64 MB - 1.65x memory usage
```

