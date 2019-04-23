VALID_CHOICES = { rock: 'r', paper: 'p', scissors: 'sc', 
                  spock: 'sp', lizard: 'l' }

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors')) ||
    (first == 'lizard' && (second == 'paper' || second == 'spock'))
end

def display_options
  VALID_CHOICES.each do |k, v|
    puts "- For #{k.capitalize}, type: #{v}"
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

    prompt("You chose: #{choice}. Computer chose: #{computer_choice}")
    display_result(choice, computer_choice)

    if win?(choice, computer_choice)
      player_counter += 1
    elsif win?(computer_choice, choice)
      computer_counter += 1
    end
  end

  display_who_won(player_counter, computer_counter)
  prompt("Final result:")
  puts "=> You: #{player_counter}, Computer: #{computer_counter}"

  prompt("Would you like to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye.")
