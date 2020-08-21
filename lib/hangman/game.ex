defmodule Hangman.Game do
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: []
  )

  def new_game() do
    %Hangman.Game{
      letters: Dictionary.random() |> String.codepoints()
    }
  end
end
