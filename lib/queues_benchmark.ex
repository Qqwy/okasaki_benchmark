defmodule QueuesBenchmark do
  @moduledoc """
  Runs the benchmark to compare the different
  speeds of the queue implementations contained in the Okasaki queues library.
  """

  def run_benchmark do

    list = Enum.to_list(1..10_000)
    queue_implementations = [
      Okasaki.Implementations.ErlangQueue,
      Okasaki.Implementations.AmortizedQueue,
      Okasaki.Implementations.ConstantQueue,
    ]

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
    queue =
      Okasaki.Queue.new(list, implementation: implementation)
      |> Okasaki.Queue.size()
  end
end
