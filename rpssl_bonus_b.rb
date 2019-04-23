VALID_CHOICES = { rock: 'r', paper: 'p', scissors: 'sc',
                  spock: 'sp', lizard: 'l' }

WINNING_COMBOS = %w(rock scissors), %w(rock lizard), %w(paper rock),
                 %w(paper spock), %w(scissors paper),
                 %w(scissors lizard), %w(spock rock),
                 %w(spock scissors), %w(lizard spock),
                 %w(lizard paper)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_COMBOS.include?([first, second])
end

def display_options
  VALID_CHOICES.each_pair do |key, value|
    arr = key.to_s.split(//)
    rest = arr[(value.length..arr.length)]
    puts "[#{value}]#{rest.join}"
  end
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def display_who_won(first, second)
  if first > second
    prompt("You won the game")
  else
    prompt("Computer won the game")
  end
end

loop do
  player_counter = 0
  computer_counter = 0

  until player_counter == 5 || computer_counter == 5
    choice = ''
    loop do
      prompt("Please make a choice:")
      display_options
      input = gets.chomp

      choice = VALID_CHOICES.key(input).to_s
      if VALID_CHOICES.values.include?(input)
        break
      else
        prompt("Please enter a valid choice")
      end
    end

    computer_choice = VALID_CHOICES.key(VALID_CHOICES.values.sample).to_s
    
    if win?(choice, computer_choice)
      player_counter += 1
    elsif win?(computer_choice, choice)
      computer_counter += 1
    end

    prompt("You chose: #{choice}. Computer chose: #{computer_choice}")
    display_result(choice, computer_choice)
    prompt("You: #{player_counter} Computer: #{computer_counter}\n\n")
  end

  display_who_won(player_counter, computer_counter)
  
  answer = ''
  loop do
    prompt("Would you like to play again?")
    answer = gets.chomp
    if %w(y n).include?(answer.downcase)
      break
    else
      prompt("Type 'y' or 'n'")
    end
  end
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye.")
