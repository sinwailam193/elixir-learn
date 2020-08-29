defmodule Cards do
    def create_deck do
        values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
        suites = ["Spade", "Club", "Heart", "Diamond"]

        for value <- values, suit <- suites do
            "#{value} of #{suit}"
        end
    end

    def shuffle(deck) do
        Enum.shuffle(deck)
    end

    def contains?(deck, card) do
        Enum.member?(deck, card)
    end

    def deal(deck, size) do
        Enum.split(deck, size)
    end
end
