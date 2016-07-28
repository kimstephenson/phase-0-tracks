require_relative "word_game"

describe WordGame do
  let(:game) {WordGame.new("potato")}

  it "keeps track of guesses used" do
    expect(game.guess_counter("a")).to eq(1)
    expect(game.guess_counter("b")).to eq(2)
    expect(game.guess_counter("A")).to eq(2)
  end

  it "prints out a string of blanks, filling in correct letters" do
    expect(game.game_printer("z")).to eq("_ _ _ _ _ _")
    expect(game.game_printer("A")).to eq("_ _ _ a _ _")
    expect(game.game_printer("o")).to eq("_ o _ a _ o")
  end

end