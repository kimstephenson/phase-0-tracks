require_relative "word_game"

describe WordGame do
  let(:test_game) {WordGame.new("potato")}

  it "calculates available guesses" do
    expect(test_game.available_guesses).to eq(12)
  end

  it "keeps track of guesses used" do
    expect(test_game.guess_counter("a")).to eq(1)
    expect(test_game.guess_counter("b")).to eq(2)
    expect(test_game.guess_counter("A")).to eq(2)
  end

  it "prints out a string of blanks, filling in correct letters" do
    expect(test_game.game_printer("z")).to eq("_ _ _ _ _ _")
    expect(test_game.game_printer("A")).to eq("_ _ _ a _ _")
    expect(test_game.game_printer("o")).to eq("_ o _ a _ o")
  end

  it "game ends if full word is guessed" do
    test_game.game_printer("p")
    test_game.game_printer("o")
    test_game.game_printer("t")
    test_game.game_printer("a")

    expect(test_game.game_ender).to eq true
  end

  it "game ends if player runs out of guesses" do
    test_game.guess_counter("p")
    test_game.guess_counter("b")
    test_game.guess_counter("c")
    test_game.guess_counter("d")
    test_game.guess_counter("e")
    test_game.guess_counter("f")
    test_game.guess_counter("g")
    test_game.guess_counter("h")
    test_game.guess_counter("i")
    test_game.guess_counter("j")
    test_game.guess_counter("k")
    test_game.guess_counter("l")

    expect(test_game.game_ender).to eq true
  end
end