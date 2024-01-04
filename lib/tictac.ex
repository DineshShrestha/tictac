defmodule Tictac do
  def squares do
    for c<- 1..3, r <- 1..3, into: MapSet.new(), do: %Square{col: c, row: r}
  end
end
