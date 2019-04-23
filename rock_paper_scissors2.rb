VALID_CHOICES = ['rock', 'paper', 'scissors']

def display_result(array)
  hash = { player: [['scissors', 'paper'], ['rock', 'scissors'], ['paper', 'rock']],
          computer: [['rock', 'paper'], ['paper', 'scissors'], ['scissors', 'rock']] }
  if hash[:player].include?(array)
    prompt("You won!")
  elsif hash[:computer].include?(array)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  puts "=> #{message}"
end

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

  winner = [choice.to_s, computer_choice.to_s]
  display_result(winner)

  prompt("Would you like to play again?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye.")
