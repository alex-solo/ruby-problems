class Move
  VALUES = ['rock', 'paper', 'scissors']

  def initialize(value)
    @value = value
  end

  def to_s
    @value
  end

  def scissors?
    @value == "scissors"
  end

  def rock?
    @value == "rock"
  end

  def paper?
    @value == "paper"
  end

  def >(other_move)
    if rock?
      return true if other_move.scissors?
      return false
    elsif paper?
      return true if other_move.rock?
      return false
    elsif scissors?
      return true if other_move.paper?
      return false
    end
  end

  def <(other_move)
    if rock?
      return true if other_move.paper?
      return false
    elsif paper?
      return true if other_move.scissors?
      return false
    elsif scissors?
      return true if other_move.rock?
      return false
    end
  end
end

class Player
  attr_accessor :move, :name

  def initialize
    set_name
  end

end

class Human < Player
  def set_name
    n = ''
      loop do
        puts "Please enter your name:"
        n = gets.chomp
        break unless n.empty?
      end
      self.name = n
  end

  def choose
    choice = nil
      loop do
        puts "Please choose rock, paper, or scissors:"
        choice = gets.chomp
        break if Move::VALUES.include?(choice)
        puts "Invalid"
      end
      self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ["R2D2", "Hal", "Chappie"].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome"
  end

  def display_goodbye_message
    puts "BYE"
  end

  def display_winner
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."

    if human.move > computer.move
      puts "#{human.name} won"
    elsif human.move < computer.move
      puts "#{computer.name} won"
    else
      puts "It's a tie"
    end
      
  end

  def play_again?
    input = ''
    loop do
      puts "Would you like to play again? Enter 'y' or 'n'."
      input = gets.chomp
      break if ['y', 'n'].include?(input.downcase)
    end
    return true if input == 'y'
    false
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play