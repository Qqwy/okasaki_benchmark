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
Estimated total run time: 1.40 min


Benchmarking Elixir.Okasaki.Implementations.AmortizedDeque...
Benchmarking Elixir.Okasaki.Implementations.AmortizedQueue...
Benchmarking Elixir.Okasaki.Implementations.ConstantDeque...
Benchmarking Elixir.Okasaki.Implementations.ConstantQueue...
Benchmarking Elixir.Okasaki.Implementations.ErlangDeque...
Benchmarking Elixir.Okasaki.Implementations.ErlangQueue...

Name                                                    ips        average  deviation         median         99th %
Elixir.Okasaki.Implementations.ErlangDeque           213.13        4.69 ms    ±18.61%        4.38 ms        8.38 ms
Elixir.Okasaki.Implementations.AmortizedQueue        212.92        4.70 ms    ±21.46%        4.28 ms        8.32 ms
Elixir.Okasaki.Implementations.AmortizedDeque        212.63        4.70 ms    ±21.40%        4.32 ms        8.26 ms
Elixir.Okasaki.Implementations.ErlangQueue           191.64        5.22 ms    ±35.38%        4.48 ms       13.06 ms
Elixir.Okasaki.Implementations.ConstantQueue         156.62        6.39 ms    ±15.52%        6.07 ms       10.43 ms
Elixir.Okasaki.Implementations.ConstantDeque          0.194     5144.21 ms    ±17.95%     5102.58 ms     6087.56 ms

Comparison: 
Elixir.Okasaki.Implementations.ErlangDeque           213.13
Elixir.Okasaki.Implementations.AmortizedQueue        212.92 - 1.00x slower
Elixir.Okasaki.Implementations.AmortizedDeque        212.63 - 1.00x slower
Elixir.Okasaki.Implementations.ErlangQueue           191.64 - 1.11x slower
Elixir.Okasaki.Implementations.ConstantQueue         156.62 - 1.36x slower
Elixir.Okasaki.Implementations.ConstantDeque          0.194 - 1096.39x slower

Memory usage statistics:

Name                                             Memory usage
Elixir.Okasaki.Implementations.ErlangDeque            4.96 MB
Elixir.Okasaki.Implementations.AmortizedQueue         6.49 MB - 1.31x memory usage 
Elixir.Okasaki.Implementations.AmortizedDeque         6.49 MB - 1.31x memory usage
Elixir.Okasaki.Implementations.ErlangQueue            4.96 MB - 1.00x memory usage
Elixir.Okasaki.Implementations.ConstantQueue          8.25 MB - 1.66x memory usage
Elixir.Okasaki.Implementations.ConstantDeque          9.51 MB - 1.92x memory usage

**All measurements for memory usage were the same**
 
```

