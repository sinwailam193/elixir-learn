defmodule CardsTest do
    use ExUnit.Case
    doctest Cards

    test "creates the deck" do
        assert Cards.create_deck() == ["Ace of Spade", "Ace of Club", "Ace of Heart", "Ace of Diamond",
        "Two of Spade", "Two of Club", "Two of Heart", "Two of Diamond",
        "Three of Spade", "Three of Club", "Three of Heart", "Three of Diamond",
        "Four of Spade", "Four of Club", "Four of Heart", "Four of Diamond",
        "Five of Spade", "Five of Club", "Five of Heart", "Five of Diamond",
        "Six of Spade", "Six of Club", "Six of Heart", "Six of Diamond",
        "Seven of Spade", "Seven of Club", "Seven of Heart", "Seven of Diamond",
        "Eight of Spade", "Eight of Club", "Eight of Heart", "Eight of Diamond",
        "Nine of Spade", "Nine of Club", "Nine of Heart", "Nine of Diamond",
        "Ten of Spade", "Ten of Club", "Ten of Heart", "Ten of Diamond",
        "Jack of Spade", "Jack of Club", "Jack of Heart", "Jack of Diamond",
        "Queen of Spade", "Queen of Club", "Queen of Heart", "Queen of Diamond",
        "King of Spade", "King of Club", "King of Heart", "King of Diamond"]
    end

    test "shuffling the deck" do
        assert Cards.create_deck |> Cards.shuffle != ["Ace of Spade", "Ace of Club", "Ace of Heart", "Ace of Diamond",
        "Two of Spade", "Two of Club", "Two of Heart", "Two of Diamond",
        "Three of Spade", "Three of Club", "Three of Heart", "Three of Diamond",
        "Four of Spade", "Four of Club", "Four of Heart", "Four of Diamond",
        "Five of Spade", "Five of Club", "Five of Heart", "Five of Diamond",
        "Six of Spade", "Six of Club", "Six of Heart", "Six of Diamond",
        "Seven of Spade", "Seven of Club", "Seven of Heart", "Seven of Diamond",
        "Eight of Spade", "Eight of Club", "Eight of Heart", "Eight of Diamond",
        "Nine of Spade", "Nine of Club", "Nine of Heart", "Nine of Diamond",
        "Ten of Spade", "Ten of Club", "Ten of Heart", "Ten of Diamond",
        "Jack of Spade", "Jack of Club", "Jack of Heart", "Jack of Diamond",
        "Queen of Spade", "Queen of Club", "Queen of Heart", "Queen of Diamond",
        "King of Spade", "King of Club", "King of Heart", "King of Diamond"]
    end

    test "contains card in deck" do
        assert Cards.create_deck |> Cards.contains?("Ace of Spade") == true
        assert Cards.create_deck |> Cards.contains?("Six") == false
    end

    test "deal card from deck" do
        {hand, deck} = Cards.create_deck |> Cards.deal(5)
        assert hand == ["Ace of Spade", "Ace of Club", "Ace of Heart", "Ace of Diamond", "Two of Spade"]
        assert deck == ["Two of Club", "Two of Heart", "Two of Diamond", "Three of Spade",
        "Three of Club", "Three of Heart", "Three of Diamond", "Four of Spade",
        "Four of Club", "Four of Heart", "Four of Diamond", "Five of Spade",
        "Five of Club", "Five of Heart", "Five of Diamond", "Six of Spade",
        "Six of Club", "Six of Heart", "Six of Diamond", "Seven of Spade",
        "Seven of Club", "Seven of Heart", "Seven of Diamond", "Eight of Spade",
        "Eight of Club", "Eight of Heart", "Eight of Diamond", "Nine of Spade",
        "Nine of Club", "Nine of Heart", "Nine of Diamond", "Ten of Spade",
        "Ten of Club", "Ten of Heart", "Ten of Diamond", "Jack of Spade",
        "Jack of Club", "Jack of Heart", "Jack of Diamond", "Queen of Spade",
        "Queen of Club", "Queen of Heart", "Queen of Diamond", "King of Spade",
        "King of Club", "King of Heart", "King of Diamond"]
    end
end
