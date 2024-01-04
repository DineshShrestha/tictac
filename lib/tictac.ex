defmodule Tictac do
  @players {:x, :o}

  def check_player(player) do
    case player do
      :x    -> {:ok, player}
      :o    -> {:ok, player}
      _    -> {:error, :invalid_player}
    end
  end

  def new_board do
    for s <- squares(), into: %{}, do: {s, :empty}
  end
  def squares do
    for c<- 1..3, r <- 1..3, into: MapSet.new(), do: %Square{col: c, row: r}
  end
end
