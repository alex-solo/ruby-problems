LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts "=> #{message}"
end

def monthly_payment(loan_amount, rate, duration)
  loan_amount * (rate / (1 - (1 + rate)**-duration))
end

def monthly_rate(annual_rate)
  (annual_rate.to_f / 12) / 100
end

def integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def float?(num)
  num.to_f.to_s == num && num.to_f > 0
end

def number?(input)
  integer?(input) || float?(input)
end

def valid_answer?(answer)
  %w(y n).include?(answer.downcase)
end

prompt('welcome')

loop do # main loop
  prompt('enter')

  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if number?(loan_amount)
      break
    else
      prompt('loan_invalid')
    end
  end

  prompt('annual_rate')

  annual_rate = ''
  loop do
    annual_rate = gets.chomp
    if number?(annual_rate)
      break
    else
      prompt('apr_invalid')
    end
  end

  rate = monthly_rate(annual_rate)

  prompt('duration')
  duration = ''

  loop do
    duration = gets.chomp
    if number?(duration) == false || integer?(duration) == false
      prompt('duration_invalid')
    else
      break
    end
  end

  amount = monthly_payment(loan_amount.to_f, rate.to_f, duration.to_i).round(2)

  prompt('result')
  puts "$#{amount}"

  prompt('exit')

  loop do
    input = gets.chomp.downcase
    if valid_answer?(input) && input == 'y'
      break
    elsif valid_answer?(input) && input == 'n'
      prompt('bye')
      exit
    else
      puts "Please enter Y or N"
    end
  end
end
