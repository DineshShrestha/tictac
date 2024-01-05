defmodule Comprehension do
  def deck_of_cards do
    higher_order= ['A', 'J', 'K', 'Q']
    card_type=['Diamond', 'Spade', 'Club', 'Heart']

    Enum.each(card_type, fn type ->
      for num <- 1..13 do
        if num == 1 do
          [elem, _, _, _] = higher_order
          IO.puts("#{type} of #{elem}")
        end
        if num == 11 do
          [_,elem, _ ,_] = higher_order
          IO.puts("#{type} of #{elem}")
        end
        if num == 12 do
          [_, _, elem ,_] = higher_order
          IO.puts("#{type} of #{elem}")
        end
        if num == 13 do
          [_ , _, _ ,elem] = higher_order
          IO.puts("#{type} of #{elem}")
        end
        if num >=2 and num <=10 do
          IO.puts("#{type} of #{num}")
        end

      end
    end)
  end
  def restriction do
    for a <- 1..10, b <- 1..10, a*b > 10, do: {a, b}
  end
end
