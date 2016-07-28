require_relative "word_game"

describe WordGame do
  let(:game) {WordGame.new("potato")}

  it "keeps track of amount of guesses used" do
    expect(game.guess_counter("a")).to eq(1)
    expect(game.guess_counter("b")).to eq(2)
    expect(game.guess_counter("a")).to eq(2)
  end

end