defmodule Cards do
    def create_deck do
        values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
        suites = ["Spade", "Club", "Heart", "Diamond"]

        for value <- values, suit <- suites do
            "#{value} of #{suit}"
        end
    end

    def shuffle(deck), do: Enum.shuffle(deck)

    def contains?(deck, card), do: Enum.member?(deck, card)

    def deal(deck, size), do: Enum.split(deck, size)

    def save(deck, filename), do: File.write(filename, :erlang.term_to_binary(deck))

    def load(filename) do
        case File.read(filename) do
            {:ok, binary} -> :erlang.binary_to_term(binary)
            {:error, _reason} -> "This file doesn't exist in memory"
        end
    end
end
