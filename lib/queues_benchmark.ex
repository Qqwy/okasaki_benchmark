defmodule QueuesBenchmark do
  @moduledoc """
  Runs the benchmark to compare the different
  speeds of the queue implementations contained in the Okasaki queues library.
  """

  def run_benchmark(num_items \\ 50_000) do

    list = Enum.to_list(1..num_items)
    queue_implementations = [
      Okasaki.Implementations.ErlangQueue,
      Okasaki.Implementations.AmortizedQueue,
      Okasaki.Implementations.ConstantQueue,

      Okasaki.Implementations.ErlangDeque,
      Okasaki.Implementations.AmortizedDeque,
      Okasaki.Implementations.ConstantDeque,
    ]

    IO.puts "Running benchmark with #{num_items} items."

    queue_implementations
    |> Enum.map(&example_tuple(list, &1))
    |> Enum.into(%{})
    |> Benchee.run(time: 10, memory_time: 2);
  end

  defp example_tuple(list, implementation) do
    {"#{implementation}", example_lambda(list, implementation)}
  end

  defp example_lambda(list, implementation) do
    fn ->
      example(list, implementation)
    end
  end

  defp example(list, implementation) do
    list
    |> Okasaki.Queue.new(implementation: implementation)
    |> Okasaki.Queue.size()
  end
end
