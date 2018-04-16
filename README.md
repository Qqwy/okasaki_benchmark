# QueuesBenchmark


A (somewhat unscientific) Benchmark of the different queue implementations used in Okasaki:

```
1000 items: 
  Operating System: Linux"
  CPU Information: Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz
  Number of Available Cores: 8
  Available memory: 7.63 GB
  Elixir 1.6.1
  Erlang 20.1

  Benchmark suite executing with the following configuration:
  warmup: 2 s
  time: 2 s
  memory time: 2 s
  parallel: 1
  inputs: none specified
  Estimated total run time: 36 s


  Benchmarking Elixir.Okasaki.Implementations.AmortizedDeque...
  Benchmarking Elixir.Okasaki.Implementations.AmortizedQueue...
  Benchmarking Elixir.Okasaki.Implementations.ConstantDeque...
  Benchmarking Elixir.Okasaki.Implementations.ConstantQueue...
  Benchmarking Elixir.Okasaki.Implementations.ErlangDeque...
  Benchmarking Elixir.Okasaki.Implementations.ErlangQueue...

  Name                                                    ips        average  deviation         median         99th %
  Elixir.Okasaki.Implementations.AmortizedQueue       12.44 K       80.37 μs    ±17.66%          77 μs         146 μs
  Elixir.Okasaki.Implementations.ErlangDeque          12.09 K       82.72 μs    ±15.91%          79 μs         148 μs
  Elixir.Okasaki.Implementations.ErlangQueue          11.93 K       83.81 μs    ±15.09%          81 μs         147 μs
  Elixir.Okasaki.Implementations.AmortizedDeque       11.88 K       84.20 μs    ±17.46%          80 μs         156 μs
  Elixir.Okasaki.Implementations.ConstantQueue         7.76 K      128.89 μs    ±23.96%         117 μs      241.31 μs
  Elixir.Okasaki.Implementations.ConstantDeque         0.65 K     1529.64 μs     ±8.84%        1488 μs     2001.23 μs

  Comparison: 
  Elixir.Okasaki.Implementations.AmortizedQueue       12.44 K
  Elixir.Okasaki.Implementations.ErlangDeque          12.09 K - 1.03x slower
  Elixir.Okasaki.Implementations.ErlangQueue          11.93 K - 1.04x slower
  Elixir.Okasaki.Implementations.AmortizedDeque       11.88 K - 1.05x slower
  Elixir.Okasaki.Implementations.ConstantQueue         7.76 K - 1.60x slower
  Elixir.Okasaki.Implementations.ConstantDeque         0.65 K - 19.03x slower

  Memory usage statistics:

  Name                                                  average  deviation         median         99th %
  Elixir.Okasaki.Implementations.AmortizedQueue        56.77 KB    ±13.10%       57.88 KB       57.88 KB
  Elixir.Okasaki.Implementations.ErlangDeque           44.51 KB     ±9.76%       45.06 KB       45.06 KB
  Elixir.Okasaki.Implementations.ErlangQueue           44.52 KB     ±9.64%       45.06 KB       45.06 KB
  Elixir.Okasaki.Implementations.AmortizedDeque        56.73 KB    ±13.14%       57.88 KB       57.88 KB
  Elixir.Okasaki.Implementations.ConstantQueue         72.69 KB     ±8.27%       73.39 KB       73.39 KB
  Elixir.Okasaki.Implementations.ConstantDeque        127.85 KB     ±5.36%      128.76 KB      128.76 KB

  Comparison: 
  Elixir.Okasaki.Implementations.AmortizedQueue        57.88 KB
  Elixir.Okasaki.Implementations.ErlangDeque           45.06 KB - 0.78x memory usage
  Elixir.Okasaki.Implementations.ErlangQueue           45.06 KB - 0.78x memory usage
  Elixir.Okasaki.Implementations.AmortizedDeque        57.88 KB - 1.00x memory usage
  Elixir.Okasaki.Implementations.ConstantQueue         73.39 KB - 1.27x memory usage
  Elixir.Okasaki.Implementations.ConstantDeque        128.76 KB - 2.22x memory usage



50_000 items: 
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

