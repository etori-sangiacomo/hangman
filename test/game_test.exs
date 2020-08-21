defmodule GameTest do
  use ExUnit.Case

  alias Hangman.Game

  test "new_game returns structure" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "check each element of the letters list is a lower-case" do
    game = Game.new_game()

    downcase =
      game.letters
      |> Enum.all?(fn x ->
        x == String.downcase(x)
      end)

    assert downcase == true
  end
end
