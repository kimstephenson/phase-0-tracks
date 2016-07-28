#Create a Word Game class
#The class will have the following attributes:
# -A word, which is a writable attribute received in the form of user input
# -A count of the number of guesses made
#  -A count of available guesses, which depends on the length of the word
# -A boolean denoting whether the game is over (???)
#The class will have the following instance methods:
# -A method that splits the word into characters and calculates total available
# guesses
# -A method that checks if the guessed letter is in the word and keeps track
# of the amount of guesses (only adding if the letter hasn’t been guessed already)
# -A method that prints a string of blanks the length of the answer, and fills in
# letters as correct guesses are made
#The driver code will do the following:
# -Ask Player 1 for the word
# -Print a statement that tells Player 2 how many guesses they have
# -A loop that continually accepts guesses until the word is complete or they run
# out of guesses. Also prints the updated feedback after each guess
# -A congratulatory message if they win, or a taunting message if they lose

class WordGame(word)
  def initialize
    @word = word
  end
end