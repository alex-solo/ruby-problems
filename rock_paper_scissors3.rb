
VALID_CHOICES = ['rock', 'paper', 'scissors']

def test_method
  prompt("test message")
end

def win?(first, second)
    (first == 'scissors' && second == 'paper') || 
    (first == 'rock' && second == 'scissors') || 
    (first == 'paper' && second == 'rock')
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

def prompt(message)
  puts "=> #{message}"
end

test_method

loop do
  choice = ''
  loop do
    prompt("Please make a choice: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("Please enter a valid choice")
      end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  prompt("You chose: #{choice}. Computer chose: #{computer_choice}")
  
  display_result(choice, computer_choice)
  
  prompt("Would you like to play again?")
  answer = gets.chomp
  
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye.")
