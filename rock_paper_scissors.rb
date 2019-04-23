VALID_CHOICES = ['rock', 'paper', 'scissors']

def test_method
  prompt("test message")
end

def display_result(player, computer)
  if (player == 'scissors' && computer == 'paper') || 
    (player == 'rock' && computer == 'scissors') || 
    (player == 'paper' && computer == 'rock')
      prompt("You won!")
  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'paper' && computer == 'scissors') ||
        (player == 'scissors' && computer == 'rock')
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
