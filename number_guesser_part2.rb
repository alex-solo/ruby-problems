class PingGame
  attr_reader :range
  def initialize(min, max)
    @range = (min..max)
    @guesses = compute(range)
    @secret_number = rand(@range)
    @guess = nil
  end

  def compute(range)
    Math.log2((range).to_a.size).to_i + 1
  end

  def play
    loop do
      show_guesses_remaining
      guess_number
      decrement_guesses
      result
      break if win? || ran_out?
    end
  end

  def result
    puts case
         when ran_out? && !win? then "You ran out of guesses. You lose."
         when low? then "Your guess is too low."
         when high? then "Your guess is too high."
         when win? then "YOU WIN!"
         end
  end

  def show_guesses_remaining
    puts "You have #{@guesses} guesses remaining."
  end

  def decrement_guesses
    @guesses -= 1
  end

  def guess_number
    number = ''
    loop do
      puts "Enter a number between #{range.first} and #{range.last}:"
      number = gets.chomp.to_i
      break if (range).cover?(number)
      puts "Invalid guess. Enter a number between #{range.first} and #{range.last}:"
    end
    @guess = number
  end
  
  def ran_out?
    @guesses == 0
  end
  
  def win?
    @guess == @secret_number
  end
  
  def low?
    @guess < @secret_number
  end
  
  def high?
    @guess > @secret_number
  end
end

game = PingGame.new(501, 14300)
game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# You win!

# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low
# You are out of guesses. You lose.
