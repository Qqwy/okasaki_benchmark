defmodule QueuesBenchmark do
  @moduledoc """
  Documentation for QueuesBenchmark.
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

  def example_tuple(list, implementation) do
    {"#{implementation}", example_lambda(list, implementation)}
  end

  def example_lambda(list, implementation) do
    fn ->
      example(list, implementation)
    end
  end

  def example(list, implementation) do
    queue =
      Okasaki.Queue.new(list, implementation: implementation)
      |> Okasaki.Queue.size()
  end

end
